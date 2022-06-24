require 'api_time'

describe TimeError do
  it 'returns difference between the remote clock and local clock' do
    fake_requester = double(:requester)
    allow(fake_requester).to receive(:get).with(
        URI("https://worldtimeapi.org/api/ip")
        ).and_return('{"abbreviation":"BST","client_ip":"86.25.108.31","datetime":"2022-06-24T11:35:11.912388+01:00","day_of_week":5,"day_of_year":175,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1656066911,"utc_datetime":"2022-06-24T10:35:11.912388+00:00","utc_offset":"+01:00","week_number":25}')
    time = Time.new(2022, 6, 24, 11, 35, 11)
    time_error = TimeError.new(fake_requester)
    result = time_error.error(time)
    expect(result).to eq 0.912388
  end
end