Job.create([
  {company_id: 1, title: "Software Developer", description: "Develop and manage software", url: "fakeurl.com", location: "NYC", active: true, salary_range: "60K - 70K"},
  {company_id: 1, title: "Software Team Lead", description: "Manage a team of developers", url: "fakeurljobs.com", location: "Chicago", active: true, salary_range: "100K - 105K"},
  {company_id: nil, title: "garbage man", description: "move garbage", url: "garbage.com", location: "nyc", active: true, salary_range: "12-12"},
  {company_id: nil, title: "asdadssa", description: "sadasdasd", url: "sadasd", location: "dasadasd", active: false, salary_range: "asdasdasd"}
])
Company.create([
  {name: "microsoft", logo: "url", description: "techonological corporation"}
])
