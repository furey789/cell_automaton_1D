
class WelcomeController < ApplicationController

  def index

    @arr_rule30=[]
    cols=65
    rows=65

    arr=Array.new(cols,0)
    arr[(cols-1)/2]=1
    @arr_rule30<<arr


    (0..rows).each do |i|

      arr=Array.new(cols,0)

      @arr_rule30[i].each_index do |id|

        if id==0 || id==cols-1
          arr[id]=rand(0..1)
        else
          case @arr_rule30[i][(id-1)..(id+1)]
          when [1,0,0], [0,1,0], [0,0,1], [0,1,1]
            arr[id]=1
          else
            arr[id]=0
          end
        end

      end

      @arr_rule30<<arr

    end

  end

end
