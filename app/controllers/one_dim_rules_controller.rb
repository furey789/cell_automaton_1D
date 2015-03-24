
class OneDimRulesController < ApplicationController

  def show

    @rule=One_dim_rule.find(params[:id])
    triplets_str=@rule.returns_one
    triplets_arr_strings=triplets_str.split("|")
    @triplets=[]
    triplets_arr_strings.each do |triplet|
      @triplets << triplet.split(",").map{|num| num.to_i}
    end

    @arr_master=[]
    cols=95
    rows=225
    arr=Array.new(cols,0)
    arr[(cols-1)/2]=1
    @arr_master<<arr

    (0..rows).each do |i|

      arr=Array.new(cols,0)

      @arr_master[i].each_index do |id|

        if id==0
          triplet_now=[ @arr_master[i][cols-1],@arr_master[i][id],@arr_master[i][id+1] ]
        elsif id==(cols-1)
          triplet_now=[ @arr_master[i][id-1],@arr_master[i][id], @arr_master[i][0] ]
        else
          triplet_now=@arr_master[i][(id-1)..(id+1)]
        end

        case triplet_now
        when @triplets[0], @triplets[1], @triplets[2], @triplets[3], @triplets[4]
          arr[id]=1
        else
          arr[id]=0
        end

      end

      @arr_master<<arr

    end

  end

end
