class RefactorWorker
  include Sidekiq::Worker
  sidekiq_options retry:false

  def perform(*args)

    #Progression

    skill_progression
    level_progression
    site_skill_progression
    site_level_progression
    teacher_skill_progression
    teacher_level_progression
    student_skill_progression
    student_level_progression

    #Attendence

    skill_attendence
    level_attendence
    site_skill_attendence
    site_level_attendence
    teacher_skill_attendence
    teacher_level_attendence
    student_skill_attendence
    student_level_attendence
 
    #Age Progression

    student_age_skill_progression
    student_age_level_progression
    student_age_site_skill_progression
    student_age_site_level_progression
    student_age_teacher_skill_progression
    student_age_teacher_level_progression
    student_age_skill_progression
    student_age_level_progression

    #Age Attendence

    student_age_skill_attendence
    student_age_level_attendence
    student_age_site_skill_attendence
    student_age_site_level_attendence
    student_age_teacher_skill_attendence
    student_age_teacher_level_attendence
    student_age_skill_attendence
    student_age_level_attendence

  end

  #Progression

  def skill_progression
    
  end

  def level_progression
    
  end
  
  def site_skill_progression

  end
  
  def site_level_progression
  
  end
  
  def teacher_skill_progression
  
  end
  
  def teacher_level_progression
  
  end
  
  def student_skill_progression
  
  end
  
  def student_level_progression

  end

  #Attendence
  def skill_attendence
  
  end
  
  def level_attendence
  
  end
  
  def site_skill_attendence
  
  end
  
  def site_level_attendence
  
  end
  
  def teacher_skill_attendence
  
  end
  
  def teacher_level_attendence
  
  end
  
  def student_skill_attendence
  
  end
  
  def student_level_attendence

  end

  #Age Progression

  def student_age_skill_progression

  end

  def student_age_level_progression
  
  end

  def student_age_site_skill_progression
  
  end

  def student_age_site_level_progression
  
  end

  def student_age_teacher_skill_progression
  
  end

  def student_age_teacher_level_progression
  
  end

  def student_age_skill_progression
  
  end

  def student_age_level_progression

  end

  #Age Attendence

  def student_age_skill_attendence

  end

  def student_age_level_attendence
  
  end

  def student_age_site_skill_attendence
  
  end

  def student_age_site_level_attendence
  
  end

  def student_age_teacher_skill_attendence
  
  end

  def student_age_teacher_level_attendence
  
  end

  def student_age_skill_attendence
  
  end

  def student_age_level_attendence

  end
end
