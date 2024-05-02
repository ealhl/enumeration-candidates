# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here
    @candidates.each do |candidate|
      if candidate[:id] == id
        return candidate
      else
        nil 
        puts "ID not found"
      end
    end
end
  
  def experienced?(candidate)
    # Your code Here
    if candidate[:years_of_experience] >= 2
      return true
    else
      return false
    end
  end
  
  # More methods will go below
  def github?(candidate)
    if candidate[:github_points] >= 100
      return true
    else
      return false
    end
  end

  def languages?(candidate)
    if candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
      return true
    else
      return false
    end
  end

  def date?(candidate)
    if candidate[:date_applied] >= 15.days.ago.to_date
      return true
    else
      return false
    end
  end

  def age?(candidate)
    if candidate[:age] > 17
      return true
    else
      return false
    end
  end

  def qualified_candidates(candidates)
    # Your code Here
    qualified_candidates = []
    candidates.each do |candidate|
      if experienced?(candidate) && github?(candidate) && languages?(candidate) && date?(candidate) && age?(candidate)
        qualified_candidates << candidate
      end
    end
    return qualified_candidates
  end

  def ordered_by_qualifications(candidates)
    # Your code Here
    candidates.sort_by { |candidate| [candidate[:years_of_experience], candidate[:github_points]] }.reverse
  end

