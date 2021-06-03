# vim ft=sieve

require ["fileinto", "envelope", "imap4flags"];
if address :is "from" "nimrod@shore.co.il" { setflag "\\seen"; }

if address :is :domain "from" [ "drushim.co.il", "indeed.com", "picaro.co.il",
"jobnet.co.il", "cps.co.il", "seev.co.il", "yad2jobs.co.il", "mindu.co.il",
"korentec.co.il", "ethosia.com", "ethosia.co.il", "nisha.co.il", "alljob.co.il",
"alljobs.co.il", "propel.co.il", "simplyfind.co.il", "jobby.co.il",
"niloosoft.com", "qhr.co.il", "dialog.co.il", "taldor.co.il", "linkedin.com",
"*.linkedin.com", "hire.withgoogle.com" , "hunterhrms.com", "triplebyte.com",
"gun.io", "lever.co", "*.lever.co", "logica-it.co.il", "lever.co", "*.lever.co",
"woo.io", "myworkday.com", "*.myworkday.com", "experteer.com",
"*.experteer.com", "hunted.co.il", "remote.com", "itworks.org.il" ]
{
	fileinto "Wanted";
}
elsif anyof (
    address :is :domain "from" [ "community.popcorncomputer.com", "puppet.com",
"devopsdays.org", "teleticket.co.il", "puppetlabs.com", "drivehq.com",
"bsdmag.org", "macecraft.com", "rol.co.il", "pointmail.co.za", "agora.co.il",
"bsdmag.com", "check.me", "dvorak.org", "perlmaven.com", "itnewsletter.co.il",
"aerofs.com", "lastpass.com", "openstack-israel.org", "sdjournal.org",
"htisrael.co.il", "github.com", "marriott-email.com", "meetup.com",
"8662244.co.il", "software.com.pl", "heroku.com", "eg-innovations.net",
"email-marriott.com", "info.docker.com", "docker.com", "docker.io",
"onedrive.microsoft.com", "aerofs.com", "m.aerofs.com", "airbnb.com",
"circleci.com", "bugs.debian.org", "getcloudify.com", "mqg.org.il",
"samerica.co.il", "gigaspaces.com", "getcloudify.org", "email.aol.com",
"microfocus.com", "*.microfocus.com", "statscraft.org.il", "novell.com",
"mozilla.org", "*.mozilla.org", "htmag.co.il" ],
    address :is "from" [ "ecomeshek@gmail.com", "ironethaifa@haifa.muni.il", "cloudnativeisrael@gmail.com" ],
    address :is :domain "to" [ "openbsd.org", "meetup.com" ])
{
	fileinto "Mailinglists";
}
elsif anyof (address :is :domain "from" [ "travelbird.be", "nitzan-hr.com",
"ispc.co.il", "meckano.co.il", "kustonline.be", "freefax.co.il", "summary.com",
"twoomail.com", "thephonehouse.es", "*.thephonehouse.es", "*.ru" ],
	address :is "from" [ "rsnc.office@gmail.com", "zelba100@gmail.com" ])
{
	fileinto "Junk";
}
elsif address :is :domain "from" [ "startcom.org", "davidcpa.co.il",
"icount.co.il", "10ten.co.il", "greeninvoices.co.il" ]
{
	fileinto "Shore";
}
elsif address :is "to" [ "abuse@shore.co.il", "clamav@shore.co.il", "ftp@shore.co.il", "hostmaster@shore.co.il", "mailer-daemon@shore.co.il", "news@shore.co.il", "nobody@shore.co.il", "noc@shore.co.il", "postmaster@shore.co.il", "root@shore.co.il", "security@shore.co.il", "usenet@shore.co.il", "webmaster@shore.co.il", "www@shore.co.il" ]
{
	fileinto "Root";
}
elsif address :is :domain "from" [ "leumi.co.il", "*.leumi.co.il",
"leumi-card.co.il", "*.leumi-card.co.il", "leumicard.co.il",
"*.leumicard.co.il" ]
{
    fileinto "Leumi";
}
elsif address :is "from" [ "irist@zy1882.co.il", "tzaharon@zamarin.org.il" ]
{
    fileinto "Daycare";
}
elsif address :is "from" [ "mail.amt.law@gmail.com", "mati@amt-law.co.il" ]
{
    fileinto "Divorce";
}
elsif address :is :domain "from" [ "icc.co.il", "*.icc.co.il" ]
{
    fileinto "Cal";
}
elsif address :is :domain "from" [ "htzone.co.il" ]
{
    fileinto "htzone";
}
elsif address :is :domain "from" ["chorus.one"]
{
    fileinto "ChorusOne";
}
elsif address :is :domain "from" ["fibi.co.il"]
{
    fileinto "fibi";
}
elsif address :is :domain "from" ["expertlead.de", "expertlead.com", "expertlead.io"]
{
    fileinto "expertlead";
}
