When (/^I filter the search by '(.*)'$/) do |amenity|
    begin
        @hotelsPage.filter(amenity)
    rescue => e
        fail "Error filtering by amenities. Error: #{e}"
    end
end    

When (/^I submit the search filters$/) do
    begin
        @hotelsPage.submit
    rescue => e
        fail "Error submitting filters. Error: #{e}"
    end
end

Then (/^I get results with '(.*)' amenity$/) do |amenity|
    begin
        itemsWithAmenity = @hotelsPage.getListItemsWithAmenityCount(amenity)
        pageItems = @hotelsPage.getListItemsCount
        fail "Not all results have the selected amenity" unless itemsWithAmenity == pageItems
    rescue => e
        fail "Error verifyin filters. Error: #{e}"
    end
end
