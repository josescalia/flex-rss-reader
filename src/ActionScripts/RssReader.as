// ActionScript file
			import mx.containers.Form;
			import mx.skins.Border;
			import mx.skins.halo.BusyCursor;
			import mx.controls.Alert;
			public var tempLink:String;
			[Bindable]public var serverURL:String;

			private function initApp():void{
				serverURL  = xml.server_url;
				rssMain.send();
			}

			private function getRss():void{
				rssFeeder.send();
			}
			
			private function addRss():void{
				rssAdd.send();
				//read the response & show an alert
				
				//reload the feeder
				refreshForm();
				
				//clean Up Add Form
				cleanUpAdd();
				
			}
			
			private function delRss():void{
				rssDelete.send();
				//read the response & show an alert
				
				//reload the feeder
				refreshForm();
				cleanUpEdit();
				
			}
			
			private function editRss():void{
				rssEdit.send();
				//read the response & show an alert
				
				//reload the feeder
				refreshForm();
				cleanUpEdit();
			}
			
			
			private function resetAdd():void{
                addRssLink.text="";
				addRssName.text="";
				addRssName.setFocus();
				
			}
			
			private function cleanUpAdd():void{
				addRssLink.text="";
				addRssName.text="";
			}
			
			private function cleanUpEdit():void{
				editRssId.text="";
				editRssLink.text="";
				editRssName.text="";
			}
			
			private function refreshForm():void{
				initApp();
				dg2.invalidateList();
				feeder.invalidateDisplayList();
			}