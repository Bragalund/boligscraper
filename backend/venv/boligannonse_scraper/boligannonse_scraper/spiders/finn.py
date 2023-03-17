import scrapy


class FinnSpider(scrapy.Spider):
    name = "finn"
    allowed_domains = ["finn.no"]
    start_urls = ["https://kart.finn.no/?mapType=norge&tab=soek_i_annonser&searchKey=search_id_realestate_homes&mapTitle=Kart+over+bolig+til+salgs+&ztr=1&areaId=20061"]

    def parse(self, response):
        pass
