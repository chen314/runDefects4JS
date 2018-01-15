#! /bin/bash
echo '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo 'This is for running docker image of the application testcases.'
echo '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo 'ABBREVITAION      APPLICATION'
echo '--------------------------------------------------------------'
echo 'FP_1              Flatpickr_1'
echo 'HOT_1             Handsontable_1'
echo 'JQUI_1            Jqueryui_1'
echo 'LSJ_1             Lazyjs_1'
echo 'LL_1              Leaflet_1'
echo 'MT_1              Material_1'
echo 'MDL_1             Moodle_1'
echo 'MSJS_1            Multiscroll_1'
echo 'RCM_1             Roundcubemail_1'
echo 'TBLT_1            Tabulator_1'

#Mozilla
echo 'MZ_AWSY_1         Mozilla_Areweslimyet_1'
echo 'MZ_MLD_1          Mozilla_Mortarlistdetail_1'

#WikiMedia
echo 'WM_TMH_1          WikiMidia_TimedMediaHandler_1'
echo 'WM_WH_1           WikiMedia_WikiHiero_1'

# WordPress
echo 'WP_GP_1           WP_GalleriaPress_1'
echo 'WP_GM_1           WP_GrandMedia_1'
echo 'WP_HMP_1          WP_HeroMapsPro_1'
echo 'WP_IOYA_1         WP_InOverYourArchives_1'
echo 'WP_PT_1           WP_PressThis_1'
echo 'WP_TP_1           WP_ThemesPlus_1'
echo '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo 'Please type in the ABBREVITAION of the application, sush as FP_1'
echo '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'

read anApp
# In the docker cantainer
echo "\n"
echo 'IN THE DOCKER CONTAINER TERMINAL, PLEASE TYPE IN:'
echo '----------------------------------------------------------------'
echo 'source setup.sh'
echo '----------------------------------------------------------------'
echo "\n"
case $anApp in

    FP_1)                           echo 'Flatpickr'
                                    docker run -it --net defects4js --ip 172.88.0.4 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:flatpickr_defect1 bash
                                    ;;
    HOT_1)                          echo 'Handsontable'
                                    docker run -it --net defects4js --ip 172.88.0.5 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:handsontable_defect1 bash
                                    ;;
    JQUI_1)                         echo 'Jqueryui'
                                    docker run -it --net defects4js --ip 172.88.0.6 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:jquery_defect1 bash
                                    ;;
    LSJ_1)                          echo 'Lazyjs'
                                    docker run -it --net defects4js --ip 172.88.0.7 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:lazy_defect1 bash
                                    ;;
    LL_1)                           echo 'Leaflet'
                                    docker run -it --net defects4js --ip 172.88.0.8 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:leaflet_defect1 bash
                                    ;;
    MT_1)                           echo 'Material'
                                    docker run -it --net defects4js --ip 172.88.0.9 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:material_defect1 bash
                                    ;;
    MDL_1)                          echo 'Moodle'
                                    docker run -it --net defects4js --ip 172.88.0.10 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:moodle28081_defect1 bash
                                    ;;
    MSJS_1)                         echo 'Multiscroll'
                                    docker run -it --net defects4js --ip 172.88.0.11 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:multiscroll_defect1 bash
                                    ;;
    RCM_1)                          echo 'Roundcubemail'
                                    docker run -it --net defects4js --ip 172.88.0.12 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:roundcubemail_defect1 bash
                                    ;;
    TBLT_1)                         echo 'Tabulator'
                                    docker run -it --net defects4js --ip 172.88.0.13 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:tabulator_defect1 bash
                                    ;;

#Mozilla
    MZ_AWSY_1)                      echo 'Areweslimyet'
                                    docker run -it --net defects4js --ip 172.88.0.14 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:mozilla_areweslimyet_defect1 bash
                                    ;;
    MZ_MLD_1)                       echo 'Mortarlistdetail'
                                    docker run -it --net defects4js --ip 172.88.0.15 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:mozilla_mortarlistdetail_defect1 bash
                                    ;;
#WikiMedia
    WM_TMH_1)                       echo 'WikiMidia_TimedMediaHandler_1'
                                    docker run -it --net defects4js --ip 172.88.0.16 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:mediawiki28081_defect1 bash
                                    ;;
    WM_WH_1)                        echo 'WikiMedia_WikiHiero_1'
                                    docker run -it --net defects4js --ip 172.88.0.17 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:wikimedia_wikihiero_defect1 bash
                                    ;;
# WordPress
    WP_GP_1)                        echo 'WP_GalleriaPress'
                                    docker run -it --net defects4js --ip 172.88.0.18 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:wordpressPlugins_galleriaPress28083_defect1 bash
                                    ;;
    WP_GM_1)                        echo 'WP_GrandMedia'
                                    docker run -it --net defects4js --ip 172.88.0.19 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:wordpressPlugins_grandMedia28085_defect1 bash
                                    ;;
    WP_HMP_1)                       echo 'WP_HeroMapsPro'
                                    docker run -it --net defects4js --ip 172.88.0.20 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:wordpressPlugins_heroMapsPro28084_defect1 bash
                                    ;;
    WP_IOYA_1)                      echo 'WP_InOverYourArchives'
                                    docker run -it --net defects4js --ip 172.88.0.21 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:wordpressPlugins_inOverYourArchives28086_defect1 bash
                                    ;;
    WP_PT_1)                        echo 'WP_PressThis'
                                    docker run -it --net defects4js --ip 172.88.0.22 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:wordpressPlugins_pressThis28087_defect1 bash
                                    ;;
    WP_TP_1)                        echo 'WP_ThemesPlus'
                                    docker run -it --net defects4js --ip 172.88.0.23 --name ram -v /var/run/docker.sock:/var/run/docker.sock c314/defects4js_testcase:wordpressPlugins_themesPlus28088_defect1 bash
                                    ;;

    *)  echo 'Error! Please insert the correct abbreviation of the application.'

esac
