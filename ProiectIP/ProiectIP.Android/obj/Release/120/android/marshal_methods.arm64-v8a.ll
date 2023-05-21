; ModuleID = 'obj\Release\120\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\120\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [154 x i64] [
	i64 36418902923615093, ; 0: Plugin.LocalNotification => 0x8162cc9bdf1b75 => 20
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 15
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 16
	i64 181099460066822533, ; 3: Microcharts.Droid.dll => 0x28364ffda4c4985 => 8
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 53
	i64 464346026994987652, ; 5: System.Reactive.dll => 0x671b04057e67284 => 32
	i64 702024105029695270, ; 6: System.Drawing.Common => 0x9be17343c0e7726 => 74
	i64 720058930071658100, ; 7: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 47
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 45
	i64 887546508555532406, ; 9: Microcharts.Forms => 0xc5132d8dc173876 => 9
	i64 996343623809489702, ; 10: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 61
	i64 1000557547492888992, ; 11: Mono.Security.dll => 0xde2b1c9cba651a0 => 76
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 63
	i64 1242825128587570229, ; 13: ProiectIP.dll => 0x113f66dea3642c35 => 22
	i64 1416135423712704079, ; 14: Microcharts => 0x13a71faa343e364f => 7
	i64 1425944114962822056, ; 15: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 1
	i64 1624659445732251991, ; 16: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 37
	i64 1731380447121279447, ; 17: Newtonsoft.Json => 0x18071957e9b889d7 => 18
	i64 1795316252682057001, ; 18: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 38
	i64 1836611346387731153, ; 19: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 53
	i64 1981742497975770890, ; 20: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 50
	i64 1986553961460820075, ; 21: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 57
	i64 2064708342624596306, ; 22: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 69
	i64 2133195048986300728, ; 23: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 18
	i64 2262844636196693701, ; 24: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 45
	i64 2329709569556905518, ; 25: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 49
	i64 2337758774805907496, ; 26: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 33
	i64 2470498323731680442, ; 27: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 41
	i64 2547086958574651984, ; 28: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 36
	i64 2592350477072141967, ; 29: System.Xml.dll => 0x23f9e10627330e8f => 34
	i64 2624866290265602282, ; 30: mscorlib.dll => 0x246d65fbde2db8ea => 17
	i64 2656907746661064104, ; 31: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 11
	i64 2783046991838674048, ; 32: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 33
	i64 2960931600190307745, ; 33: Xamarin.Forms.Core => 0x2917579a49927da1 => 59
	i64 3017704767998173186, ; 34: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 63
	i64 3122911337338800527, ; 35: Microcharts.dll => 0x2b56cf50bf1e898f => 7
	i64 3289520064315143713, ; 36: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 48
	i64 3344514922410554693, ; 37: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 72
	i64 3522470458906976663, ; 38: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 54
	i64 3531994851595924923, ; 39: System.Numerics => 0x31042a9aade235bb => 31
	i64 3727469159507183293, ; 40: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 52
	i64 3869221888984012293, ; 41: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 13
	i64 4247996603072512073, ; 42: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 65
	i64 4326933140005261798, ; 43: Xamarin.AndroidX.Biometric => 0x3c0c5ac408e111e6 => 39
	i64 4525561845656915374, ; 44: System.ServiceModel.Internals => 0x3ece06856b710dae => 75
	i64 4794310189461587505, ; 45: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 36
	i64 4795410492532947900, ; 46: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 54
	i64 5110018051851905565, ; 47: ProiectIP => 0x46ea6e5818776a1d => 22
	i64 5142919913060024034, ; 48: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 60
	i64 5203618020066742981, ; 49: Xamarin.Essentials => 0x4836f704f0e652c5 => 58
	i64 5408338804355907810, ; 50: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 55
	i64 5507995362134886206, ; 51: System.Core.dll => 0x4c705499688c873e => 27
	i64 5528247634813456972, ; 52: Plugin.LocalNotification.dll => 0x4cb847ef1773124c => 20
	i64 5974002045223400615, ; 53: Plugin.Fingerprint => 0x52e7eb3560ff74a7 => 19
	i64 6085203216496545422, ; 54: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 61
	i64 6086316965293125504, ; 55: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6218967553231149354, ; 56: Firebase.Auth.dll => 0x564e360a4805d92a => 2
	i64 6401687960814735282, ; 57: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 49
	i64 6548213210057960872, ; 58: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 44
	i64 6560151584539558821, ; 59: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 14
	i64 6659513131007730089, ; 60: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 47
	i64 6671798237668743565, ; 61: SkiaSharp => 0x5c96fd260152998d => 23
	i64 6876862101832370452, ; 62: System.Xml.Linq => 0x5f6f85a57d108914 => 35
	i64 7488575175965059935, ; 63: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 35
	i64 7602111570124318452, ; 64: System.Reactive => 0x698020320025a6f4 => 32
	i64 7635363394907363464, ; 65: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 59
	i64 7637365915383206639, ; 66: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 58
	i64 7654504624184590948, ; 67: System.Net.Http => 0x6a3a4366801b8264 => 30
	i64 7735352534559001595, ; 68: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 68
	i64 7820441508502274321, ; 69: System.Data => 0x6c87ca1e14ff8111 => 73
	i64 7836164640616011524, ; 70: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 37
	i64 7927939710195668715, ; 71: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 24
	i64 8083354569033831015, ; 72: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 48
	i64 8087206902342787202, ; 73: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 28
	i64 8167236081217502503, ; 74: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 5
	i64 8187102936927221770, ; 75: SkiaSharp.Views.Forms => 0x719e6ebe771ab80a => 25
	i64 8187640529827139739, ; 76: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 71
	i64 8601935802264776013, ; 77: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 55
	i64 8626175481042262068, ; 78: Java.Interop => 0x77b654e585b55834 => 5
	i64 8702320156596882678, ; 79: Firebase.dll => 0x78c4da1357adccf6 => 3
	i64 8725526185868997716, ; 80: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 28
	i64 8853378295825400934, ; 81: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 67
	i64 8854686927553911847, ; 82: Plugin.SharedTransitions.dll => 0x7ae22ad8b2255c27 => 21
	i64 9057635389615298436, ; 83: LiteDB => 0x7db32f65bf06d784 => 6
	i64 9296667808972889535, ; 84: LiteDB.dll => 0x8104661dcca35dbf => 6
	i64 9324707631942237306, ; 85: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 38
	i64 9662334977499516867, ; 86: System.Numerics.dll => 0x8617827802b0cfc3 => 31
	i64 9678050649315576968, ; 87: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 41
	i64 9808709177481450983, ; 88: Mono.Android.dll => 0x881f890734e555e7 => 16
	i64 9998632235833408227, ; 89: Mono.Security => 0x8ac2470b209ebae3 => 76
	i64 10038780035334861115, ; 90: System.Net.Http.dll => 0x8b50e941206af13b => 30
	i64 10144742755892837524, ; 91: Firebase => 0x8cc95dc98eb5bc94 => 3
	i64 10226222362177979215, ; 92: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 69
	i64 10229024438826829339, ; 93: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 44
	i64 10318047534812931528, ; 94: Xamarin.AndroidX.Biometric.dll => 0x8f311190c81ea5c8 => 39
	i64 10321854143672141184, ; 95: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 66
	i64 10406448008575299332, ; 96: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 72
	i64 10430153318873392755, ; 97: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 42
	i64 11002576679268595294, ; 98: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 12
	i64 11023048688141570732, ; 99: System.Core => 0x98f9bc61168392ac => 27
	i64 11037814507248023548, ; 100: System.Xml => 0x992e31d0412bf7fc => 34
	i64 11122995063473561350, ; 101: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 57
	i64 11162124722117608902, ; 102: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 56
	i64 11226290749488709958, ; 103: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 14
	i64 11340910727871153756, ; 104: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 43
	i64 11529969570048099689, ; 105: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 56
	i64 11530571088791430846, ; 106: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 13
	i64 12102847907131387746, ; 107: System.Buffers => 0xa7f5f40c43256f62 => 26
	i64 12120226097870463949, ; 108: ProiectIP.Android.dll => 0xa833b16b98fce3cd => 0
	i64 12451044538927396471, ; 109: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 46
	i64 12466513435562512481, ; 110: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 51
	i64 12528155905152483962, ; 111: Firebase.Auth => 0xaddcf36b3153827a => 2
	i64 12538491095302438457, ; 112: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 40
	i64 12797749361114189727, ; 113: ProiectIP.Android => 0xb19abd3d11b18f9f => 0
	i64 12828192437253469131, ; 114: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 70
	i64 12843321153144804894, ; 115: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 15
	i64 12963446364377008305, ; 116: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 74
	i64 13370592475155966277, ; 117: System.Runtime.Serialization => 0xb98de304062ea945 => 1
	i64 13403416310143541304, ; 118: Microcharts.Droid => 0xba02801ea6c86038 => 8
	i64 13454009404024712428, ; 119: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 64
	i64 13465488254036897740, ; 120: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 68
	i64 13492263892638604996, ; 121: SkiaSharp.Views.Forms.dll => 0xbb3e2686788d9ec4 => 25
	i64 13572454107664307259, ; 122: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 52
	i64 13647894001087880694, ; 123: System.Data.dll => 0xbd670f48cb071df6 => 73
	i64 13828521679616088467, ; 124: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 67
	i64 13959074834287824816, ; 125: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 46
	i64 13967638549803255703, ; 126: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 60
	i64 14124974489674258913, ; 127: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 40
	i64 14669215534098758659, ; 128: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 11
	i64 14792063746108907174, ; 129: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 64
	i64 14852515768018889994, ; 130: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 43
	i64 14954917835170835695, ; 131: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 10
	i64 15279429628684179188, ; 132: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 71
	i64 15370334346939861994, ; 133: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 42
	i64 15391712275433856905, ; 134: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 10
	i64 15540815214206815676, ; 135: Plugin.Fingerprint.dll => 0xd7ac11193ac88dbc => 19
	i64 15609085926864131306, ; 136: System.dll => 0xd89e9cf3334914ea => 29
	i64 15810740023422282496, ; 137: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 62
	i64 15930129725311349754, ; 138: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 65
	i64 16154507427712707110, ; 139: System => 0xe03056ea4e39aa26 => 29
	i64 16321164108206115771, ; 140: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 12
	i64 16324796876805858114, ; 141: SkiaSharp.dll => 0xe28d5444586b6342 => 23
	i64 16423015068819898779, ; 142: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 70
	i64 16833383113903931215, ; 143: mscorlib => 0xe99c30c1484d7f4f => 17
	i64 17001062948826229159, ; 144: Microcharts.Forms.dll => 0xebefe8ad2cd7a9a7 => 9
	i64 17158783226145295961, ; 145: Plugin.SharedTransitions => 0xee203e6edc524e59 => 21
	i64 17671790519499593115, ; 146: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 24
	i64 17704177640604968747, ; 147: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 51
	i64 17710060891934109755, ; 148: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 50
	i64 17838668724098252521, ; 149: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 26
	i64 17882897186074144999, ; 150: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17891337867145587222, ; 151: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 66
	i64 17892495832318972303, ; 152: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 62
	i64 18129453464017766560 ; 153: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 75
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [154 x i32] [
	i32 20, i32 15, i32 16, i32 8, i32 53, i32 32, i32 74, i32 47, ; 0..7
	i32 45, i32 9, i32 61, i32 76, i32 63, i32 22, i32 7, i32 1, ; 8..15
	i32 37, i32 18, i32 38, i32 53, i32 50, i32 57, i32 69, i32 18, ; 16..23
	i32 45, i32 49, i32 33, i32 41, i32 36, i32 34, i32 17, i32 11, ; 24..31
	i32 33, i32 59, i32 63, i32 7, i32 48, i32 72, i32 54, i32 31, ; 32..39
	i32 52, i32 13, i32 65, i32 39, i32 75, i32 36, i32 54, i32 22, ; 40..47
	i32 60, i32 58, i32 55, i32 27, i32 20, i32 19, i32 61, i32 4, ; 48..55
	i32 2, i32 49, i32 44, i32 14, i32 47, i32 23, i32 35, i32 35, ; 56..63
	i32 32, i32 59, i32 58, i32 30, i32 68, i32 73, i32 37, i32 24, ; 64..71
	i32 48, i32 28, i32 5, i32 25, i32 71, i32 55, i32 5, i32 3, ; 72..79
	i32 28, i32 67, i32 21, i32 6, i32 6, i32 38, i32 31, i32 41, ; 80..87
	i32 16, i32 76, i32 30, i32 3, i32 69, i32 44, i32 39, i32 66, ; 88..95
	i32 72, i32 42, i32 12, i32 27, i32 34, i32 57, i32 56, i32 14, ; 96..103
	i32 43, i32 56, i32 13, i32 26, i32 0, i32 46, i32 51, i32 2, ; 104..111
	i32 40, i32 0, i32 70, i32 15, i32 74, i32 1, i32 8, i32 64, ; 112..119
	i32 68, i32 25, i32 52, i32 73, i32 67, i32 46, i32 60, i32 40, ; 120..127
	i32 11, i32 64, i32 43, i32 10, i32 71, i32 42, i32 10, i32 19, ; 128..135
	i32 29, i32 62, i32 65, i32 29, i32 12, i32 23, i32 70, i32 17, ; 136..143
	i32 9, i32 21, i32 24, i32 51, i32 50, i32 26, i32 4, i32 66, ; 144..151
	i32 62, i32 75 ; 152..153
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
