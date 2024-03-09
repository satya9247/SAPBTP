sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ss/product/test/integration/FirstJourney',
		'ss/product/test/integration/pages/productList',
		'ss/product/test/integration/pages/productObjectPage'
    ],
    function(JourneyRunner, opaJourney, productList, productObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ss/product') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheproductList: productList,
					onTheproductObjectPage: productObjectPage
                }
            },
            opaJourney.run
        );
    }
);