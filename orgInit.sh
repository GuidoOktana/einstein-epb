sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
sfdx shane:github:package:install -g GuidoOktana -r einstein-demos
sfdx force:source:push
sfdx force:user:permset:assign -n ED
sfdx shane:data:tree:import -p data/plan.json -d data/
sfdx force:user:password:generate
sfdx force:org:open