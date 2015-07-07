
class OneDimRulesController < ApplicationController

  def index
    @rules = One_dim_rule.all
  end

  def update
    @rule_tmp = One_dim_rule.find_by(id: 999)
    @rule_tmp.update(one_dim_rule_params)
    redirect_to one_dim_rule_path(@rule_tmp)
  end

  def show

    @rule=One_dim_rule.find(params[:id])
    @arr_master=[]
    cols=95
    rows=225
    arr=Array.new(cols,0)

    if (@rule.seed_state == "Centered")
      center_id = (cols-1)/2
      start_id = center_id - (@rule.seed_number - 1)
      (0..(@rule.seed_number-1)).each do |num|
        id = start_id + (num * 2)
        arr[id]=1
      end
    elsif (@rule.seed_state == "Random")
      random_ids =[]
      while random_ids.length < @rule.seed_number do
        rand_num = rand(95)
        if (random_ids.index(rand_num) == nil)
          random_ids.push(rand_num)
        end
      end
      random_ids.each do |id|
        arr[id]=1
      end
    end

    @arr_master<<arr

    (0..rows).each do |i|

      arr=Array.new(cols,0)

      @arr_master[i].each_index do |id|

        if id==0
          triplet_now=[ @arr_master[i][cols-1], @arr_master[i][id], @arr_master[i][id+1] ]
        elsif id==(cols-1)
          triplet_now=[ @arr_master[i][id-1], @arr_master[i][id], @arr_master[i][0] ]
        else
          triplet_now=@arr_master[i][(id-1)..(id+1)]
        end

        if @rule["t"+triplet_now.join()] == 1
          arr[id]=1
        else
          arr[id]=0
        end

      end

      @arr_master<<arr

    end

  end

  private

  def one_dim_rule_params
    params.require(:one_dim_rule).permit(:t000,:t010,:t001,:t011,:t100,:t110,:t101,:t111,:seed_number,:seed_state)
  end

end
