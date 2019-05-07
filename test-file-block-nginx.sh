oc new-project nginx-block
echo "adding policy to allow priviledged"
oc adm policy add-scc-to-user anyuid -z default --as=system:admin
echo "creating PVCss:"
for nu in {1..10};do echo "pvc $nu created"; sed "s/<nu>/$nu/g" pv-block-templ.yaml |oc -n nginx-block create -f - ;done
echo "sleeping 60s to settle"
sleep 60 
echo "creating RCs"
for nu in {1..10};do echo "rc $nu created"; sed "s/<nu>/$nu/g" nginx-rc-block-templ.yaml |oc -n nginx-block create -f - ;done 

echo "======================================================================================================="
echo "=                                                                                                     ="
echo "=                                                                                                     ="
echo "=                                     sleeping 2 minutes to settle                                    ="
echo "=                                                                                                     ="
echo "=                                                                                                     ="
echo "======================================================================================================="
sleep 120
echo
echo
echo "creating project for nginx file test"
oc new-project nginx-file
echo "adding policy to allow priviledged"
oc adm policy add-scc-to-user anyuid -z default --as=system:admin
echo "creating PVCss:"
for nu in {1..10};do echo "pvc $nu created"; sed "s/<nu>/$nu/g" pv-file-templ.yaml |oc -n nginx-file create -f - ;done
echo "sleeping 60s to settle"
sleep 60 
echo "creating RCs"
for nu in {1..10};do echo "rc $nu created"; sed "s/<nu>/$nu/g" nginx-rc-file-templ.yaml |oc -n nginx-file create -f - ;done 

