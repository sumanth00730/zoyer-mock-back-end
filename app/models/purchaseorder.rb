class Purchaseorder < ApplicationRecord
    mount_uploaders :attachments, AttachmentUploader
    def self.search
        all
    end
end
