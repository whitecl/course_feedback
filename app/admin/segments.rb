ActiveAdmin.register Segment do

    form do |f|
        f.inputs do
            f.input :name
            f.input :released
            f.input :attachment, as: :file
        end
        
        f.actions
    end

end
