#! /bin/bash

TODELETE="Kufi Looped Naskh Nastaliq Rashi SansAdlam SansArabic SansArmenian SansBalinese SansBamum SansBengali SansCanadian SansCham SansCherokee SansDevanagari SansDisplay SansEgyptian SansEthiopic SansGeorgian SansGujarati SansGurmukhi SansHanifi SansHebrew SansJavanese SansKaithi SansKayah SansKharoshthi SansKhojki SansKhudawadi SansKannada SansKhmer SansLao SansLisu SansLycian SansLydian SansMalayalam SansMahajani SansMedefaidrin  SansMeetei SansMendeKikakui SansMeroitic SansMiao SansModi SansMongolian SansMultani SansMyanmar SansNabataean SansNewa SansNewTaiLue SansNKo SansNushu SansOgham SansOlChiki SansOld SansOsage SansOsmanya SansOriya SansPahawhHmong SansPalmyrene SansPauCinHau SansPhagsPa SansPhoenician SansPsalterPahlavi  SansSinhala SansSharada SansShavian SansSiddham SansSignWriting SansSogdian SansSoraSompengSansSoyombo SansSundanese SansSylotiNagri SansSyriac SansTagalog SansTagbanwa SansTai SansTamil SansTakri SansThaana  SansTelugu SansThai SansThaana SansTifinagh SansUgaritic SansVai SansWancho SansWarangCiti SansYi SansZanabazar SerifAdlam SerifArabic SerifArmenian SerifBalinese SerifBamum SerifBengali SerifCanadian SerifCham SerifCherokee SerifDevanagari SerifDisplay SerifEgyptian SerifEthiopic SerifGeorgian SerifGujarati SerifGurmukhi SerifHanifi SerifHebrew SerifKannada SerifKhmer SerifLao SerifMalayalam SerifMeetei SerifMyanmar SerifOriya SerifSinhala SerifTai SerifTamil SerifTelugu SerifThai SerifTibetan SerifYezidi TraditionalNushu "


case $1 in
	clean)
		mkdir /root/notocleaned
		cd /usr/share/fonts/noto/
		for font in $TODELETE
		do
			#echo $font
			find . -iname "Noto$font*.ttf" -exec mv {} /root/notocleaned/{} \;
		done
		cd -
	;;

	restore)
		echo restore
	;;

	*)
		echo Help usage of noto-cleaner.sh
		echo noto-cleaner.sh clean : Clean all useless noto files
		echo noto-cleaner.sh restore : Restore noto files cleaned
	;;
esac
