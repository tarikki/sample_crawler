import scrapy


class MySpider(scrapy.Spider):
    name = 'my_spider'
    start_urls = ['https://somewhere.com']

    def start_requests(self):
        yield scrapy.Request(url=self.start_urls[0])

    def parse(self, response):
        # do stuff with results, scrape items etc.
        # now were just checking everything worked

        print(response.body)
