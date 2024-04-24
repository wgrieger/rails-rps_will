class PagesController < ApplicationController
  def main
    render({ :template => "/main"})
  end

  def rock_result
  #RPS
    rps_array= Array.new
    rps_array.push("rock")
    rps_array.push("paper")
    rps_array.push("scissors")

    @comp_choice_pre= rps_array.sample

    @comp_choice= @comp_choice_pre.to_s
    if @comp_choice=="rock"
      @display_comp= "They played rock!"
    end
    
    if @comp_choice=="paper"
        @display_comp= "They played paper!"
    end
    
    if @comp_choice=="scissors"
        @display_comp= "They played scissors!"
    end
    #RPSend
  
  #outcome_display_rock
    if @comp_choice == "paper"
      @win_loss = "We lost!"
    end 
      
    if @comp_choice == "scissors"
        @win_loss = "We won!"
    end 
      
    if @comp_choice == "rock"
        @win_loss = "We tied!"
    end 
   #outcome_end

  render({ :template => "/rock_result"})
  end

  def paper_result
#RPS
  rps_array= Array.new
  rps_array.push("rock")
  rps_array.push("paper")
  rps_array.push("scissors")

  @comp_choice_pre= rps_array.sample

  @comp_choice= @comp_choice_pre.to_s
  if @comp_choice=="rock"
    @display_comp= "They played rock!"
  end

  if @comp_choice=="paper"
      @display_comp= "They played paper!"
  end

  if @comp_choice=="scissors"
      @display_comp= "They played scissors!"
  end
  #RPSend

  #outcome_display_paper
  if @comp_choice == "paper"
    @win_loss = "We tied!"
  end 
    
  if @comp_choice == "scissors"
      @win_loss = "We lost!"
  end 
    
  if @comp_choice == "rock"
      @win_loss = "We won!"
  end 
 #outcome_end

    render({ :template => "/paper_result"})
  end

def scissors_result
 #RPS
  rps_array= Array.new
  rps_array.push("rock")
  rps_array.push("paper")
  rps_array.push("scissors")

  @comp_choice_pre= rps_array.sample

  @comp_choice= @comp_choice_pre.to_s
  if @comp_choice=="rock"
    @display_comp= "They played rock!"
  end
  
  if @comp_choice=="paper"
      @display_comp= "They played paper!"
  end
  
  if @comp_choice=="scissors"
      @display_comp= "They played scissors!"
  end
  #RPSend
#outcome_display_scissors
if @comp_choice == "paper"
  @win_loss = "We won!"
end 
  
if @comp_choice == "scissors"
    @win_loss = "We tied!"
end 
  
if @comp_choice == "rock"
    @win_loss = "We lost!"
end 
#outcome_end
    render({ :template => "/scissors_result"})

  end

  end
