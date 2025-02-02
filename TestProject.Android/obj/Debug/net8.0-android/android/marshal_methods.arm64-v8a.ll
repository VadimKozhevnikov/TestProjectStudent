; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [292 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [584 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 214
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 167
	i64 186530032027918916, ; 2: Avalonia.ReactiveUI => 0x296b0136af76244 => 185
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 56
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 253
	i64 229794953483747371, ; 5: System.ValueTuple.dll => 0x330654aed93802b => 147
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 275
	i64 233177144301842968, ; 7: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 254
	i64 316157742385208084, ; 8: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 257
	i64 350667413455104241, ; 9: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 130
	i64 422779754995088667, ; 10: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 54
	i64 464346026994987652, ; 11: System.Reactive.dll => 0x671b04057e67284 => 238
	i64 560278790331054453, ; 12: System.Reflection.Primitives => 0x7c6829760de3975 => 93
	i64 563128987812417704, ; 13: Avalonia.Base.dll => 0x7d0a2d4b148d0a8 => 169
	i64 634308326490598313, ; 14: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 269
	i64 649145001856603771, ; 15: System.Security.SecureString => 0x90239f09b62167b => 127
	i64 670564002081277297, ; 16: Microsoft.Identity.Client.dll => 0x94e526837380571 => 215
	i64 684024108737575474, ; 17: Splat => 0x97e244d831b3a32 => 229
	i64 689551008517048957, ; 18: MicroCom.Runtime.dll => 0x991c6fd252bca7d => 199
	i64 702024105029695270, ; 19: System.Drawing.Common => 0x9be17343c0e7726 => 233
	i64 707452703347108429, ; 20: Avalonia.Controls.dll => 0x9d1607c4664ea4d => 170
	i64 750875890346172408, ; 21: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 141
	i64 799765834175365804, ; 22: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 872800313462103108, ; 23: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 261
	i64 937459790420187032, ; 24: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 223
	i64 940822596282819491, ; 25: System.Transactions => 0xd0e792aa81923a3 => 146
	i64 960778385402502048, ; 26: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 102
	i64 1010599046655515943, ; 27: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 93
	i64 1060858978308751610, ; 28: Azure.Core.dll => 0xeb8ed9ebee080fa => 190
	i64 1092282731782904681, ; 29: Avalonia.Markup.Xaml.dll => 0xf28915b7e369b69 => 173
	i64 1268860745194512059, ; 30: System.Drawing.dll => 0x119be62002c19ebb => 35
	i64 1274477032785669217, ; 31: Splat.dll => 0x11afda1bdd956c61 => 229
	i64 1278906455852160409, ; 32: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 205
	i64 1301626418029409250, ; 33: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 27
	i64 1315114680217950157, ; 34: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 251
	i64 1404195534211153682, ; 35: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 48
	i64 1425944114962822056, ; 36: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 113
	i64 1447887775169331103, ; 37: Markdown.Avalonia.dll => 0x1417ee42a1993f9f => 197
	i64 1476839205573959279, ; 38: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 68
	i64 1492954217099365037, ; 39: System.Net.HttpListener => 0x14b809f350210aad => 63
	i64 1513467482682125403, ; 40: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 166
	i64 1537168428375924959, ; 41: System.Threading.Thread.dll => 0x15551e8a954ae0df => 141
	i64 1624659445732251991, ; 42: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 250
	i64 1628611045998245443, ; 43: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 271
	i64 1651782184287836205, ; 44: System.Globalization.Calendars => 0x16ec4f2524cb982d => 38
	i64 1659332977923810219, ; 45: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 87
	i64 1682513316613008342, ; 46: System.Net.dll => 0x17597cf276952bd6 => 79
	i64 1735388228521408345, ; 47: System.Net.Mail.dll => 0x181556663c69b759 => 64
	i64 1743969030606105336, ; 48: System.Memory.dll => 0x1833d297e88f2af8 => 60
	i64 1767386781656293639, ; 49: System.Private.Uri.dll => 0x188704e9f5582107 => 84
	i64 1795316252682057001, ; 50: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 249
	i64 1822469626245718297, ; 51: ColorTextBlock.Avalonia.dll => 0x194ab6781e50a119 => 193
	i64 1825687700144851180, ; 52: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 104
	i64 1836611346387731153, ; 53: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 275
	i64 1854145951182283680, ; 54: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 100
	i64 1865037103900624886, ; 55: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 200
	i64 1875417405349196092, ; 56: System.Drawing.Primitives => 0x1a06d2319b6c713c => 34
	i64 1875917498431009007, ; 57: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 246
	i64 1972385128188460614, ; 58: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 117
	i64 1981742497975770890, ; 59: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 270
	i64 2040001226662520565, ; 60: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 138
	i64 2049694801020856142, ; 61: Avalonia.Themes.Fluent => 0x1c71fa8fd0d0274e => 188
	i64 2062890601515140263, ; 62: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 137
	i64 2064708342624596306, ; 63: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 286
	i64 2080945842184875448, ; 64: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 51
	i64 2102659300918482391, ; 65: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 34
	i64 2106033277907880740, ; 66: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 137
	i64 2192948757939169934, ; 67: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 203
	i64 2262844636196693701, ; 68: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 261
	i64 2287834202362508563, ; 69: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 70: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2304837677853103545, ; 71: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 274
	i64 2315304989185124968, ; 72: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 49
	i64 2316229908869312383, ; 73: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 221
	i64 2329709569556905518, ; 74: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 267
	i64 2335503487726329082, ; 75: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 242
	i64 2337758774805907496, ; 76: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 99
	i64 2455219140186822125, ; 77: Avalonia.Controls.ColorPicker.dll => 0x2212b0ccb89355ed => 181
	i64 2469638248378227030, ; 78: TestProject => 0x2245eae6f64d5956 => 290
	i64 2479423007379663237, ; 79: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 279
	i64 2497223385847772520, ; 80: System.Runtime => 0x22a7eb7046413568 => 114
	i64 2516498815742412887, ; 81: Xamarin.AndroidX.Core.SplashScreen.dll => 0x22ec665706048857 => 258
	i64 2547086958574651984, ; 82: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 245
	i64 2554797818648757682, ; 83: System.Runtime.Caching.dll => 0x23747714858085b2 => 239
	i64 2592350477072141967, ; 84: System.Xml.dll => 0x23f9e10627330e8f => 159
	i64 2612152650457191105, ; 85: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 222
	i64 2624866290265602282, ; 86: mscorlib.dll => 0x246d65fbde2db8ea => 162
	i64 2632269733008246987, ; 87: System.Net.NameResolution => 0x2487b36034f808cb => 65
	i64 2656907746661064104, ; 88: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 209
	i64 2689948671133085954, ; 89: Citrus.Avalonia.dll => 0x25549e107eebf102 => 192
	i64 2706075432581334785, ; 90: System.Net.WebSockets => 0x258de944be6c0701 => 78
	i64 2783046991838674048, ; 91: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 99
	i64 2787234703088983483, ; 92: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 276
	i64 2789714023057451704, ; 93: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 218
	i64 2815524396660695947, ; 94: System.Security.AccessControl => 0x2712c0857f68238b => 115
	i64 2833633450228989597, ; 95: Avalonia.Metal => 0x2753169c18903e9d => 175
	i64 2851879596360956261, ; 96: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 231
	i64 3017136373564924869, ; 97: System.Net.WebProxy => 0x29df058bd93f63c5 => 76
	i64 3028909397620569818, ; 98: Avalonia.dll => 0x2a08d90c9e0436da => 179
	i64 3063847325783385934, ; 99: System.ClientModel.dll => 0x2a84f8e8eb59674e => 230
	i64 3106852385031680087, ; 100: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 112
	i64 3110390492489056344, ; 101: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 119
	i64 3135773902340015556, ; 102: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 46
	i64 3238539556702659506, ; 103: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 224
	i64 3281594302220646930, ; 104: System.Security.Principal => 0x2d8a90a198ceba12 => 126
	i64 3289520064315143713, ; 105: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 266
	i64 3303437397778967116, ; 106: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 247
	i64 3311221304742556517, ; 107: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 80
	i64 3325875462027654285, ; 108: System.Runtime.Numerics => 0x2e27e21c8958b48d => 108
	i64 3328853167529574890, ; 109: System.Net.Sockets.dll => 0x2e327651a008c1ea => 73
	i64 3344514922410554693, ; 110: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 289
	i64 3402534845034375023, ; 111: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 235
	i64 3437845325506641314, ; 112: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 51
	i64 3493805808809882663, ; 113: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 277
	i64 3508450208084372758, ; 114: System.Net.Ping => 0x30b084e02d03ad16 => 67
	i64 3523004241079211829, ; 115: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 207
	i64 3531994851595924923, ; 116: System.Numerics => 0x31042a9aade235bb => 81
	i64 3551103847008531295, ; 117: System.Private.CoreLib.dll => 0x31480e226177735f => 168
	i64 3571415421602489686, ; 118: System.Runtime.dll => 0x319037675df7e556 => 114
	i64 3638003163729360188, ; 119: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 208
	i64 3647754201059316852, ; 120: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 152
	i64 3716579019761409177, ; 121: netstandard.dll => 0x3393f0ed5c8c5c99 => 163
	i64 3869221888984012293, ; 122: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 211
	i64 3869649043256705283, ; 123: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 31
	i64 3872065813916304632, ; 124: Notification.Avalonia => 0x35bc5757b96a44f8 => 225
	i64 3919223565570527920, ; 125: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 120
	i64 3933965368022646939, ; 126: System.Net.Requests => 0x369840a8bfadc09b => 70
	i64 3966267475168208030, ; 127: System.Memory => 0x370b03412596249e => 60
	i64 4006972109285359177, ; 128: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 157
	i64 4009997192427317104, ; 129: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 111
	i64 4073500526318903918, ; 130: System.Private.Xml.dll => 0x3887fb25779ae26e => 86
	i64 4108717018440987017, ; 131: Avalonia.Diagnostics => 0x3905185bfec6f189 => 183
	i64 4148881117810174540, ; 132: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 103
	i64 4154383907710350974, ; 133: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 134: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 142
	i64 4168469861834746866, ; 135: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 116
	i64 4187479170553454871, ; 136: System.Linq.Expressions => 0x3a1cea1e912fa117 => 56
	i64 4201423742386704971, ; 137: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 257
	i64 4205801962323029395, ; 138: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 139: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 50
	i64 4281341464560019236, ; 140: Avalonia.ReactiveUI.dll => 0x3b6a6160e5402724 => 185
	i64 4282138915307457788, ; 141: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 90
	i64 4344592723054593838, ; 142: Markdown.Avalonia => 0x3c4b18101f6a872e => 197
	i64 4373617458794931033, ; 143: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 53
	i64 4397634830160618470, ; 144: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 127
	i64 4477672992252076438, ; 145: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 148
	i64 4484706122338676047, ; 146: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 39
	i64 4513320955448359355, ; 147: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 204
	i64 4524629528625074585, ; 148: Avalonia.OpenGL => 0x3ecab69571f0d199 => 177
	i64 4533124835995628778, ; 149: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 90
	i64 4612482779465751747, ; 150: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 203
	i64 4636684751163556186, ; 151: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 280
	i64 4672453897036726049, ; 152: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 48
	i64 4674346441075111055, ; 153: Avalonia.Controls.DataGrid => 0x40de9d528964b48f => 182
	i64 4716677666592453464, ; 154: System.Xml.XmlSerializer => 0x417501590542f358 => 158
	i64 4725661025062239261, ; 155: MsBox.Avalonia => 0x4194ebaa27be3c1d => 198
	i64 4737105246518246898, ; 156: TestProject.Android => 0x41bd941f9a5bfdf2 => 0
	i64 4743821336939966868, ; 157: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 158: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 268
	i64 4794310189461587505, ; 159: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 245
	i64 4809057822547766521, ; 160: System.Drawing => 0x42bd349c3145ecf9 => 35
	i64 4814660307502931973, ; 161: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 65
	i64 4853321196694829351, ; 162: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 107
	i64 5081566143765835342, ; 163: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 97
	i64 5099468265966638712, ; 164: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 97
	i64 5103417709280584325, ; 165: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 166: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5238143335679712267, ; 167: DynamicData.dll => 0x48b19f9c65c4dc0b => 195
	i64 5244375036463807528, ; 168: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 169: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 126
	i64 5278787618751394462, ; 170: System.Net.WebClient.dll => 0x4942055efc68329e => 74
	i64 5290786973231294105, ; 171: System.Runtime.Loader => 0x496ca6b869b72699 => 107
	i64 5376510917114486089, ; 172: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 279
	i64 5423376490970181369, ; 173: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 104
	i64 5440320908473006344, ; 174: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 175: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5454055681045341991, ; 176: ReactiveUI.dll => 0x4bb0b2bebde8a727 => 226
	i64 5457765010617926378, ; 177: System.Xml.Serialization => 0x4bbde05c557002ea => 153
	i64 5488847537322884930, ; 178: System.Windows.Extensions => 0x4c2c4dc108687f42 => 244
	i64 5507995362134886206, ; 179: System.Core.dll => 0x4c705499688c873e => 21
	i64 5527431512186326818, ; 180: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 47
	i64 5549668961369458392, ; 181: Avalonia.Skia => 0x4d046284577006d8 => 187
	i64 5570799893513421663, ; 182: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 41
	i64 5573260873512690141, ; 183: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 124
	i64 5574231584441077149, ; 184: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 248
	i64 5591791169662171124, ; 185: System.Linq.Parallel => 0x4d9a087135e137f4 => 57
	i64 5610343915401270973, ; 186: Avalonia.Markup.dll => 0x4ddbf210f14456bd => 174
	i64 5650097808083101034, ; 187: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 117
	i64 5757522595884336624, ; 188: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 255
	i64 5783556987928984683, ; 189: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5932109207606926015, ; 190: TestProject.dll => 0x525315e5083c1abf => 290
	i64 5979151488806146654, ; 191: System.Formats.Asn1 => 0x52fa3699a489d25e => 234
	i64 5984759512290286505, ; 192: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 122
	i64 6222399776351216807, ; 193: System.Text.Json.dll => 0x565a67a0ffe264a7 => 243
	i64 6251069312384999852, ; 194: System.Transactions.Local => 0x56c0426b870da1ac => 145
	i64 6278736998281604212, ; 195: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 83
	i64 6284145129771520194, ; 196: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 88
	i64 6319713645133255417, ; 197: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 269
	i64 6321005050625483161, ; 198: Avalonia.Vulkan.dll => 0x57b8b89a79fb6199 => 178
	i64 6328501323422750843, ; 199: Avalonia.Dialogs => 0x57d35a6c7f33d87b => 172
	i64 6357457916754632952, ; 200: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 291
	i64 6380710567210293407, ; 201: Avalonia.Base => 0x588cd6745526989f => 169
	i64 6384864380059521739, ; 202: Avalonia.OpenGL.dll => 0x589b9853407e12cb => 177
	i64 6401687960814735282, ; 203: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 267
	i64 6444873805313470965, ; 204: ReactiveUI.Fody.Helpers.dll => 0x5970ca945bedf1f5 => 227
	i64 6548213210057960872, ; 205: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 260
	i64 6560151584539558821, ; 206: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 213
	i64 6617685658146568858, ; 207: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 131
	i64 6671798237668743565, ; 208: SkiaSharp => 0x5c96fd260152998d => 228
	i64 6713440830605852118, ; 209: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 94
	i64 6739853162153639747, ; 210: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6772837112740759457, ; 211: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 103
	i64 6786606130239981554, ; 212: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 32
	i64 6798329586179154312, ; 213: System.Windows => 0x5e5884bd523ca188 => 150
	i64 6814185388980153342, ; 214: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 154
	i64 6816440634817214622, ; 215: Avalonia.Dialogs.dll => 0x5e98dca46ed1789e => 172
	i64 6824903559247452477, ; 216: Avalonia.Remote.Protocol.dll => 0x5eb6eda0933e593d => 186
	i64 6833352825668324144, ; 217: Avalonia.Controls.ColorPicker => 0x5ed4f230b6df4b30 => 181
	i64 6876862101832370452, ; 218: System.Xml.Linq => 0x5f6f85a57d108914 => 151
	i64 6894844156784520562, ; 219: System.Numerics.Vectors => 0x5faf683aead1ad72 => 80
	i64 7060896174307865760, ; 220: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 139
	i64 7083547580668757502, ; 221: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 85
	i64 7101497697220435230, ; 222: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 223: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 265
	i64 7112547816752919026, ; 224: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 49
	i64 7153849638841211214, ; 225: TestProject.Android.dll => 0x6347945803afd94e => 0
	i64 7270811800166795866, ; 226: System.Linq => 0x64e71ccf51a90a5a => 59
	i64 7299370801165188114, ; 227: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 52
	i64 7316205155833392065, ; 228: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 229: System.Reflection => 0x65d67f295d0740ad => 95
	i64 7348123982286201829, ; 230: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 237
	i64 7377312882064240630, ; 231: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 232: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 151
	i64 7489048572193775167, ; 233: System.ObjectModel => 0x67ee71ff6b419e3f => 82
	i64 7496222613193209122, ; 234: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 235
	i64 7553498704560191638, ; 235: Avalonia.Skia.dll => 0x68d36b0d38aef896 => 187
	i64 7592535546311173087, ; 236: Avalonia.Fonts.Inter => 0x695e1ada366763df => 184
	i64 7592577537120840276, ; 237: System.Diagnostics.Process => 0x695e410af5b2aa54 => 28
	i64 7602111570124318452, ; 238: System.Reactive => 0x698020320025a6f4 => 238
	i64 7637303409920963731, ; 239: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 43
	i64 7654504624184590948, ; 240: System.Net.Http => 0x6a3a4366801b8264 => 62
	i64 7694700312542370399, ; 241: System.Net.Mail => 0x6ac9112a7e2cda5f => 64
	i64 7714652370974252055, ; 242: System.Private.CoreLib => 0x6b0ff375198b9c17 => 168
	i64 7735176074855944702, ; 243: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 244: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 284
	i64 7791074099216502080, ; 245: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 45
	i64 7820441508502274321, ; 246: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 247: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 250
	i64 7972383140441761405, ; 248: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 206
	i64 8025517457475554965, ; 249: WindowsBase => 0x6f605d9b4786ce95 => 161
	i64 8031450141206250471, ; 250: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 106
	i64 8064050204834738623, ; 251: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 252: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 266
	i64 8085230611270010360, ; 253: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 61
	i64 8087206902342787202, ; 254: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 232
	i64 8103644804370223335, ; 255: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 256: System.Reflection.Extensions => 0x70995ab73cf916ec => 91
	i64 8167236081217502503, ; 257: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 164
	i64 8185542183669246576, ; 258: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 259: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 288
	i64 8234598844743906698, ; 260: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 216
	i64 8235972910441640993, ; 261: Avalonia.Vulkan => 0x724c0db9da9d3421 => 178
	i64 8264926008854159966, ; 262: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 28
	i64 8290740647658429042, ; 263: System.Runtime.Extensions => 0x730ea0b15c929a72 => 101
	i64 8307185734628499939, ; 264: Avalonia.Android => 0x73490d698bb961e3 => 180
	i64 8318905602908530212, ; 265: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8343033485683067408, ; 266: Avalonia.MicroCom.dll => 0x73c868c07f540a10 => 176
	i64 8368701292315763008, ; 267: System.Security.Cryptography => 0x7423997c6fd56140 => 124
	i64 8410671156615598628, ; 268: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 89
	i64 8426919725312979251, ; 269: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 268
	i64 8476857680833348370, ; 270: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 241
	i64 8513291706828295435, ; 271: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 223
	i64 8518412311883997971, ; 272: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 273: System.Private.Uri => 0x76d841191140ca5b => 84
	i64 8598790081731763592, ; 274: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 263
	i64 8623059219396073920, ; 275: System.Net.Quic.dll => 0x77ab42ac514299c0 => 69
	i64 8626175481042262068, ; 276: Java.Interop => 0x77b654e585b55834 => 164
	i64 8638972117149407195, ; 277: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8648495978913578441, ; 278: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8684531736582871431, ; 279: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 42
	i64 8725526185868997716, ; 280: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 232
	i64 8853378295825400934, ; 281: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 285
	i64 8941376889969657626, ; 282: System.Xml.XDocument => 0x7c1626e87187471a => 154
	i64 8951477988056063522, ; 283: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 273
	i64 8954753533646919997, ; 284: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 110
	i64 8955323522379913726, ; 285: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 215
	i64 8962916719318709492, ; 286: Avalonia.Themes.Fluent.dll => 0x7c62ad44c666b4f4 => 188
	i64 8987845817414925545, ; 287: Avalonia.Remote.Protocol => 0x7cbb3e26baff3ce9 => 186
	i64 9052662452269567435, ; 288: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 220
	i64 9111603110219107042, ; 289: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 207
	i64 9138683372487561558, ; 290: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 119
	i64 9250544137016314866, ; 291: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 202
	i64 9324707631942237306, ; 292: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 249
	i64 9427266486299436557, ; 293: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 219
	i64 9468215723722196442, ; 294: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 155
	i64 9500688326720985260, ; 295: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 205
	i64 9554839972845591462, ; 296: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 129
	i64 9584643793929893533, ; 297: System.IO.dll => 0x85037ebfbbd7f69d => 55
	i64 9659729154652888475, ; 298: System.Text.RegularExpressions => 0x860e407c9991dd9b => 134
	i64 9662334977499516867, ; 299: System.Numerics.dll => 0x8617827802b0cfc3 => 81
	i64 9667360217193089419, ; 300: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 29
	i64 9702891218465930390, ; 301: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9808709177481450983, ; 302: Mono.Android.dll => 0x881f890734e555e7 => 167
	i64 9819168441846169364, ; 303: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 220
	i64 9825649861376906464, ; 304: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 255
	i64 9834056768316610435, ; 305: System.Transactions.dll => 0x8879968718899783 => 146
	i64 9836529246295212050, ; 306: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 92
	i64 9907349773706910547, ; 307: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 263
	i64 9933555792566666578, ; 308: System.Linq.Queryable.dll => 0x89db145cf475c552 => 58
	i64 9974604633896246661, ; 309: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 153
	i64 10004628763249497471, ; 310: Avalonia.Themes.Simple => 0x8ad794da7724557f => 189
	i64 10038780035334861115, ; 311: System.Net.Http.dll => 0x8b50e941206af13b => 62
	i64 10051358222726253779, ; 312: System.Private.Xml => 0x8b7d990c97ccccd3 => 86
	i64 10078727084704864206, ; 313: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 77
	i64 10089571585547156312, ; 314: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 45
	i64 10105485790837105934, ; 315: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 139
	i64 10226222362177979215, ; 316: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 286
	i64 10229024438826829339, ; 317: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 260
	i64 10236703004850800690, ; 318: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 72
	i64 10245369515835430794, ; 319: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 89
	i64 10253386210042008591, ; 320: Avalonia.Markup.Xaml => 0x8e4b586eea71540f => 173
	i64 10321854143672141184, ; 321: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 283
	i64 10360651442923773544, ; 322: System.Text.Encoding => 0x8fc86d98211c1e68 => 133
	i64 10364469296367737616, ; 323: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 88
	i64 10376576884623852283, ; 324: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 277
	i64 10379117478461153359, ; 325: Notification.Avalonia.dll => 0x900a085b11b9a04f => 225
	i64 10397650821851924815, ; 326: Citrus.Avalonia => 0x904be0555708494f => 192
	i64 10406448008575299332, ; 327: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 289
	i64 10430153318873392755, ; 328: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 256
	i64 10447083246144586668, ; 329: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 200
	i64 10466034231130677304, ; 330: MicroCom.Runtime => 0x913ed2ae899f6038 => 199
	i64 10546663366131771576, ; 331: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 110
	i64 10566960649245365243, ; 332: System.Globalization.dll => 0x92a562b96dcd13fb => 40
	i64 10595762989148858956, ; 333: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 155
	i64 10670374202010151210, ; 334: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 335: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 101
	i64 10785150219063592792, ; 336: System.Net.Primitives => 0x95ac8cfb68830758 => 68
	i64 10811915265162633087, ; 337: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 204
	i64 10822644899632537592, ; 338: System.Linq.Queryable => 0x9631c23204ca5ff8 => 58
	i64 10830817578243619689, ; 339: System.Formats.Tar => 0x964ecb340a447b69 => 37
	i64 10847732767863316357, ; 340: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 251
	i64 10889380495983713167, ; 341: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 201
	i64 10891019575814250380, ; 342: ColorTextBlock.Avalonia => 0x9724ac99e23bdf8c => 193
	i64 10899834349646441345, ; 343: System.Web => 0x9743fd975946eb81 => 149
	i64 10943875058216066601, ; 344: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 54
	i64 10964653383833615866, ; 345: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 33
	i64 11002576679268595294, ; 346: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 212
	i64 11019817191295005410, ; 347: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 248
	i64 11023048688141570732, ; 348: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 349: System.Xml => 0x992e31d0412bf7fc => 159
	i64 11047101296015504039, ; 350: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 224
	i64 11162124722117608902, ; 351: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 281
	i64 11188319605227840848, ; 352: System.Threading.Overlapped => 0x9b44e5671724e550 => 136
	i64 11226290749488709958, ; 353: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 213
	i64 11235648312900863002, ; 354: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 87
	i64 11299661109949763898, ; 355: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 254
	i64 11329751333533450475, ; 356: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 143
	i64 11340910727871153756, ; 357: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 259
	i64 11341245327015630248, ; 358: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 231
	i64 11347436699239206956, ; 359: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 158
	i64 11432101114902388181, ; 360: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 361: Mono.Android.Export => 0x9edabf8623efc131 => 165
	i64 11448276831755070604, ; 362: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 30
	i64 11485890710487134646, ; 363: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 105
	i64 11513602507638267977, ; 364: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 236
	i64 11517440453979132662, ; 365: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 217
	i64 11529969570048099689, ; 366: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 281
	i64 11530571088791430846, ; 367: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 211
	i64 11580057168383206117, ; 368: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 246
	i64 11591352189662810718, ; 369: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 276
	i64 11597940890313164233, ; 370: netstandard => 0xa0f429ca8d1805c9 => 163
	i64 11672361001936329215, ; 371: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 265
	i64 11692977985522001935, ; 372: System.Threading.Overlapped.dll => 0xa245cd869980680f => 136
	i64 11702333434806134740, ; 373: ReactiveUI.Fody.Helpers => 0xa2670a41e0cbe7d4 => 227
	i64 11707554492040141440, ; 374: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 57
	i64 11743665907891708234, ; 375: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 140
	i64 11917635639362386622, ; 376: ReactiveUI => 0xa563f278bebafabe => 226
	i64 11991047634523762324, ; 377: System.Net => 0xa668c24ad493ae94 => 79
	i64 11997227339607644824, ; 378: Avalonia.Controls.DataGrid.dll => 0xa67eb6b38aeb1a98 => 182
	i64 12011556116648931059, ; 379: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 240
	i64 12040886584167504988, ; 380: System.Net.ServicePoint => 0xa719d28d8e121c5c => 72
	i64 12063623837170009990, ; 381: System.Security => 0xa76a99f6ce740786 => 128
	i64 12096697103934194533, ; 382: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 383: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12107153474885735932, ; 384: Avalonia.DesignerSupport.dll => 0xa8053ff05fb355fc => 171
	i64 12123043025855404482, ; 385: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 91
	i64 12137774235383566651, ; 386: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 278
	i64 12145679461940342714, ; 387: System.Text.Json => 0xa88e1f1ebcb62fba => 243
	i64 12198439281774268251, ; 388: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 221
	i64 12201331334810686224, ; 389: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 111
	i64 12269460666702402136, ; 390: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12313367145828839434, ; 391: System.IO.Pipelines => 0xaae1de2e1c17f00a => 236
	i64 12319827376581239000, ; 392: Avalonia => 0xaaf8d1b9cb41e0d8 => 179
	i64 12332222936682028543, ; 393: System.Runtime.Handles => 0xab24db6c07db5dff => 102
	i64 12375446203996702057, ; 394: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12439275739440478309, ; 395: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 218
	i64 12451044538927396471, ; 396: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 264
	i64 12466513435562512481, ; 397: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 272
	i64 12475113361194491050, ; 398: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 291
	i64 12493213219680520345, ; 399: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 201
	i64 12517810545449516888, ; 400: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 32
	i64 12550732019250633519, ; 401: System.IO.Compression => 0xae2d28465e8e1b2f => 44
	i64 12699999919562409296, ; 402: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 29
	i64 12700543734426720211, ; 403: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 253
	i64 12708238894395270091, ; 404: System.IO => 0xb05cbbf17d3ba3cb => 55
	i64 12708922737231849740, ; 405: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 132
	i64 12717050818822477433, ; 406: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 112
	i64 12828192437253469131, ; 407: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 287
	i64 12835242264250840079, ; 408: System.IO.Pipes => 0xb21ff0d5d6c0740f => 53
	i64 12843321153144804894, ; 409: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 214
	i64 12843770487262409629, ; 410: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 411: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 75
	i64 12963446364377008305, ; 412: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 233
	i64 12998524970302822152, ; 413: Avalonia.Fonts.Inter.dll => 0xb464099762f1d708 => 184
	i64 13068258254871114833, ; 414: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 109
	i64 13106026140046202731, ; 415: HarfBuzzSharp.dll => 0xb5e1f555ee70176b => 196
	i64 13129914918964716986, ; 416: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 262
	i64 13162471042547327635, ; 417: System.Security.Permissions => 0xb6aa7dace9662293 => 241
	i64 13173818576982874404, ; 418: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 100
	i64 13220575100813410361, ; 419: DialogHost.Avalonia => 0xb778eb02325b8039 => 194
	i64 13343850469010654401, ; 420: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 166
	i64 13370592475155966277, ; 421: System.Runtime.Serialization => 0xb98de304062ea945 => 113
	i64 13401370062847626945, ; 422: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 278
	i64 13431476299110033919, ; 423: System.Net.WebClient => 0xba663087f18829ff => 74
	i64 13454009404024712428, ; 424: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 282
	i64 13463706743370286408, ; 425: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 83
	i64 13465488254036897740, ; 426: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 284
	i64 13491513212026656886, ; 427: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 252
	i64 13578472628727169633, ; 428: System.Xml.XPath => 0xbc706ce9fba5c261 => 156
	i64 13580399111273692417, ; 429: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13647894001087880694, ; 430: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13702626353344114072, ; 431: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 31
	i64 13710614125866346983, ; 432: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 115
	i64 13713329104121190199, ; 433: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 36
	i64 13717397318615465333, ; 434: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13742054908850494594, ; 435: Azure.Identity => 0xbeb596218df25c82 => 191
	i64 13768883594457632599, ; 436: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 50
	i64 13828521679616088467, ; 437: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 285
	i64 13838448951611437224, ; 438: Avalonia.Markup => 0xc00c0c00932d30a8 => 174
	i64 13881769479078963060, ; 439: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 440: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 244
	i64 13911222732217019342, ; 441: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 121
	i64 13928444506500929300, ; 442: System.Windows.dll => 0xc14bc67b8bba9714 => 150
	i64 13959074834287824816, ; 443: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 264
	i64 14075334701871371868, ; 444: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 129
	i64 14125464355221830302, ; 445: System.Threading.dll => 0xc407bafdbc707a9e => 144
	i64 14133832980772275001, ; 446: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 202
	i64 14212104595480609394, ; 447: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 118
	i64 14220608275227875801, ; 448: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 27
	i64 14226382999226559092, ; 449: System.ServiceProcess => 0xc56e43f6938e2a74 => 130
	i64 14232023429000439693, ; 450: System.Resources.Writer.dll => 0xc5824de7789ba78d => 98
	i64 14254574811015963973, ; 451: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 132
	i64 14298246716367104064, ; 452: System.Web.dll => 0xc66d93a217f4e840 => 149
	i64 14327695147300244862, ; 453: System.Reflection.dll => 0xc6d632d338eb4d7e => 95
	i64 14327709162229390963, ; 454: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 123
	i64 14346402571976470310, ; 455: System.Net.Ping.dll => 0xc718a920f3686f26 => 67
	i64 14461014870687870182, ; 456: System.Net.Requests.dll => 0xc8afd8683afdece6 => 70
	i64 14495724990987328804, ; 457: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 274
	i64 14551742072151931844, ; 458: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 242
	i64 14561513370130550166, ; 459: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 122
	i64 14574160591280636898, ; 460: System.Net.Quic => 0xca41d1d72ec783e2 => 69
	i64 14622043554576106986, ; 461: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 109
	i64 14648804764802849406, ; 462: Azure.Identity.dll => 0xcb4b0252261f9a7e => 191
	i64 14669215534098758659, ; 463: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 209
	i64 14690985099581930927, ; 464: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 148
	i64 14792063746108907174, ; 465: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 282
	i64 14832630590065248058, ; 466: System.Security.Claims => 0xcdd816ef5d6e873a => 116
	i64 14852515768018889994, ; 467: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 259
	i64 14912225920358050525, ; 468: System.Security.Principal.Windows => 0xcef2de7759506add => 125
	i64 14931407803744742450, ; 469: HarfBuzzSharp => 0xcf3704499ab36c32 => 196
	i64 14935719434541007538, ; 470: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 131
	i64 14954917835170835695, ; 471: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 210
	i64 14984936317414011727, ; 472: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 75
	i64 14987728460634540364, ; 473: System.IO.Compression.dll => 0xcfff1ba06622494c => 44
	i64 15015154896917945444, ; 474: System.Net.Security.dll => 0xd0608bd33642dc64 => 71
	i64 15024878362326791334, ; 475: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 61
	i64 15071021337266399595, ; 476: System.Resources.Reader.dll => 0xd127060e7a18a96b => 96
	i64 15076659072870671916, ; 477: System.ObjectModel.dll => 0xd13b0d8c1620662c => 82
	i64 15115185479366240210, ; 478: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 41
	i64 15133485256822086103, ; 479: System.Linq.dll => 0xd204f0a9127dd9d7 => 59
	i64 15138356091203993725, ; 480: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 217
	i64 15150743910298169673, ; 481: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 273
	i64 15227001540531775957, ; 482: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 208
	i64 15234786388537674379, ; 483: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 36
	i64 15250465174479574862, ; 484: System.Globalization.Calendars.dll => 0xd3a489469852174e => 38
	i64 15279429628684179188, ; 485: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 288
	i64 15299439993936780255, ; 486: System.Xml.XPath.dll => 0xd452879d55019bdf => 156
	i64 15312365061363956708, ; 487: DialogHost.Avalonia.dll => 0xd48072e519b37be4 => 194
	i64 15338463749992804988, ; 488: System.Resources.Reader => 0xd4dd2b839286f27c => 96
	i64 15370334346939861994, ; 489: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 256
	i64 15383240894167415497, ; 490: System.Memory.Data => 0xd57c4016df1c7ac9 => 237
	i64 15391712275433856905, ; 491: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 210
	i64 15526743539506359484, ; 492: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 133
	i64 15527772828719725935, ; 493: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 494: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 63
	i64 15541854775306130054, ; 495: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 123
	i64 15557562860424774966, ; 496: System.Net.Sockets => 0xd7e790fe7a6dc536 => 73
	i64 15582737692548360875, ; 497: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 271
	i64 15609085926864131306, ; 498: System.dll => 0xd89e9cf3334914ea => 160
	i64 15661133872274321916, ; 499: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 152
	i64 15710114879900314733, ; 500: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15755368083429170162, ; 501: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 47
	i64 15817206913877585035, ; 502: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 140
	i64 15825747108975065274, ; 503: DynamicData => 0xdba05925af9fb8ba => 195
	i64 15847085070278954535, ; 504: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 135
	i64 15885744048853936810, ; 505: System.Resources.Writer => 0xdc75800bd0b6eaaa => 98
	i64 15934062614519587357, ; 506: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 121
	i64 15937190497610202713, ; 507: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 118
	i64 15963349826457351533, ; 508: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 138
	i64 15971679995444160383, ; 509: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 37
	i64 16018552496348375205, ; 510: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 66
	i64 16054465462676478687, ; 511: System.Globalization.Extensions => 0xdecceb47319bdadf => 39
	i64 16063929133569271981, ; 512: Avalonia.Android.dll => 0xdeee8a6fc771e8ad => 180
	i64 16083117170034450818, ; 513: Avalonia.Controls => 0xdf32b5daa8e3a182 => 170
	i64 16154507427712707110, ; 514: System => 0xe03056ea4e39aa26 => 160
	i64 16160643139765297953, ; 515: MsBox.Avalonia.dll => 0xe046235017906321 => 198
	i64 16219561732052121626, ; 516: System.Net.Security => 0xe1177575db7c781a => 71
	i64 16315482530584035869, ; 517: WindowsBase.dll => 0xe26c3ceb1e8d821d => 161
	i64 16321164108206115771, ; 518: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 212
	i64 16324796876805858114, ; 519: SkiaSharp.dll => 0xe28d5444586b6342 => 228
	i64 16337011941688632206, ; 520: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 125
	i64 16423015068819898779, ; 521: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 287
	i64 16454459195343277943, ; 522: System.Net.NetworkInformation => 0xe459fb756d988f77 => 66
	i64 16496768397145114574, ; 523: Mono.Android.Export.dll => 0xe4f04b741db987ce => 165
	i64 16555111656825353880, ; 524: Avalonia.Metal.dll => 0xe5bf9256d200f698 => 175
	i64 16702652415771857902, ; 525: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 147
	i64 16709499819875633724, ; 526: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 43
	i64 16737807731308835127, ; 527: System.Runtime.Intrinsics => 0xe848a3736f733137 => 106
	i64 16758309481308491337, ; 528: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 46
	i64 16762783179241323229, ; 529: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 94
	i64 16765015072123548030, ; 530: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 30
	i64 16822611501064131242, ; 531: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 532: mscorlib => 0xe99c30c1484d7f4f => 162
	i64 16856067890322379635, ; 533: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 534: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 134
	i64 16933958494752847024, ; 535: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 76
	i64 16945858842201062480, ; 536: Azure.Core => 0xeb2bc8d57f4e7c50 => 190
	i64 16977952268158210142, ; 537: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 52
	i64 17006954551347072385, ; 538: System.ClientModel => 0xec04d70ec8414d81 => 230
	i64 17008137082415910100, ; 539: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 540: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 247
	i64 17062143951396181894, ; 541: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17118171214553292978, ; 542: System.Threading.Channels => 0xed8ff6060fc420b2 => 135
	i64 17134447395689342536, ; 543: Avalonia.DesignerSupport => 0xedc9c91fcaae2648 => 171
	i64 17137864900836977098, ; 544: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 222
	i64 17187273293601214786, ; 545: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17197986060146327831, ; 546: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 216
	i64 17201328579425343169, ; 547: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 548: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 120
	i64 17214520524539272569, ; 549: Avalonia.Themes.Simple.dll => 0xeee64335ebd59d79 => 189
	i64 17230721278011714856, ; 550: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 85
	i64 17234219099804750107, ; 551: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 145
	i64 17260702271250283638, ; 552: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 553: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 33
	i64 17338386382517543202, ; 554: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 77
	i64 17371436720558481852, ; 555: System.Runtime.Caching => 0xf113bda8d710a1bc => 239
	i64 17375958953653056453, ; 556: Avalonia.MicroCom => 0xf123ce9b484233c5 => 176
	i64 17470386307322966175, ; 557: System.Threading.Timer => 0xf27347c8d0d5709f => 143
	i64 17509662556995089465, ; 558: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 78
	i64 17509666368860808140, ; 559: Xamarin.AndroidX.Core.SplashScreen => 0xf2fed4cad38d63cc => 258
	i64 17523946658117960076, ; 560: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 240
	i64 17627500474728259406, ; 561: System.Globalization => 0xf4a176498a351f4e => 40
	i64 17685921127322830888, ; 562: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17704177640604968747, ; 563: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 272
	i64 17710060891934109755, ; 564: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 270
	i64 17712670374920797664, ; 565: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 105
	i64 17748157696115377834, ; 566: Avalonia.Diagnostics.dll => 0xf64e1f640e9286aa => 183
	i64 17777860260071588075, ; 567: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 108
	i64 17790600151040787804, ; 568: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 219
	i64 17838668724098252521, ; 569: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 570: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 283
	i64 17928294245072900555, ; 571: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 42
	i64 17992315986609351877, ; 572: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 157
	i64 18017743553296241350, ; 573: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 206
	i64 18025913125965088385, ; 574: System.Threading => 0xfa28e87b91334681 => 144
	i64 18116111925905154859, ; 575: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 252
	i64 18146411883821974900, ; 576: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 234
	i64 18146811631844267958, ; 577: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 578: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 142
	i64 18245806341561545090, ; 579: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 580: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 262
	i64 18318849532986632368, ; 581: System.Security.dll => 0xfe39a097c37fa8b0 => 128
	i64 18380184030268848184, ; 582: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 280
	i64 18439108438687598470 ; 583: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 92
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [584 x i32] [
	i32 214, ; 0
	i32 167, ; 1
	i32 185, ; 2
	i32 56, ; 3
	i32 253, ; 4
	i32 147, ; 5
	i32 275, ; 6
	i32 254, ; 7
	i32 257, ; 8
	i32 130, ; 9
	i32 54, ; 10
	i32 238, ; 11
	i32 93, ; 12
	i32 169, ; 13
	i32 269, ; 14
	i32 127, ; 15
	i32 215, ; 16
	i32 229, ; 17
	i32 199, ; 18
	i32 233, ; 19
	i32 170, ; 20
	i32 141, ; 21
	i32 18, ; 22
	i32 261, ; 23
	i32 223, ; 24
	i32 146, ; 25
	i32 102, ; 26
	i32 93, ; 27
	i32 190, ; 28
	i32 173, ; 29
	i32 35, ; 30
	i32 229, ; 31
	i32 205, ; 32
	i32 27, ; 33
	i32 251, ; 34
	i32 48, ; 35
	i32 113, ; 36
	i32 197, ; 37
	i32 68, ; 38
	i32 63, ; 39
	i32 166, ; 40
	i32 141, ; 41
	i32 250, ; 42
	i32 271, ; 43
	i32 38, ; 44
	i32 87, ; 45
	i32 79, ; 46
	i32 64, ; 47
	i32 60, ; 48
	i32 84, ; 49
	i32 249, ; 50
	i32 193, ; 51
	i32 104, ; 52
	i32 275, ; 53
	i32 100, ; 54
	i32 200, ; 55
	i32 34, ; 56
	i32 246, ; 57
	i32 117, ; 58
	i32 270, ; 59
	i32 138, ; 60
	i32 188, ; 61
	i32 137, ; 62
	i32 286, ; 63
	i32 51, ; 64
	i32 34, ; 65
	i32 137, ; 66
	i32 203, ; 67
	i32 261, ; 68
	i32 8, ; 69
	i32 14, ; 70
	i32 274, ; 71
	i32 49, ; 72
	i32 221, ; 73
	i32 267, ; 74
	i32 242, ; 75
	i32 99, ; 76
	i32 181, ; 77
	i32 290, ; 78
	i32 279, ; 79
	i32 114, ; 80
	i32 258, ; 81
	i32 245, ; 82
	i32 239, ; 83
	i32 159, ; 84
	i32 222, ; 85
	i32 162, ; 86
	i32 65, ; 87
	i32 209, ; 88
	i32 192, ; 89
	i32 78, ; 90
	i32 99, ; 91
	i32 276, ; 92
	i32 218, ; 93
	i32 115, ; 94
	i32 175, ; 95
	i32 231, ; 96
	i32 76, ; 97
	i32 179, ; 98
	i32 230, ; 99
	i32 112, ; 100
	i32 119, ; 101
	i32 46, ; 102
	i32 224, ; 103
	i32 126, ; 104
	i32 266, ; 105
	i32 247, ; 106
	i32 80, ; 107
	i32 108, ; 108
	i32 73, ; 109
	i32 289, ; 110
	i32 235, ; 111
	i32 51, ; 112
	i32 277, ; 113
	i32 67, ; 114
	i32 207, ; 115
	i32 81, ; 116
	i32 168, ; 117
	i32 114, ; 118
	i32 208, ; 119
	i32 152, ; 120
	i32 163, ; 121
	i32 211, ; 122
	i32 31, ; 123
	i32 225, ; 124
	i32 120, ; 125
	i32 70, ; 126
	i32 60, ; 127
	i32 157, ; 128
	i32 111, ; 129
	i32 86, ; 130
	i32 183, ; 131
	i32 103, ; 132
	i32 18, ; 133
	i32 142, ; 134
	i32 116, ; 135
	i32 56, ; 136
	i32 257, ; 137
	i32 17, ; 138
	i32 50, ; 139
	i32 185, ; 140
	i32 90, ; 141
	i32 197, ; 142
	i32 53, ; 143
	i32 127, ; 144
	i32 148, ; 145
	i32 39, ; 146
	i32 204, ; 147
	i32 177, ; 148
	i32 90, ; 149
	i32 203, ; 150
	i32 280, ; 151
	i32 48, ; 152
	i32 182, ; 153
	i32 158, ; 154
	i32 198, ; 155
	i32 0, ; 156
	i32 13, ; 157
	i32 268, ; 158
	i32 245, ; 159
	i32 35, ; 160
	i32 65, ; 161
	i32 107, ; 162
	i32 97, ; 163
	i32 97, ; 164
	i32 11, ; 165
	i32 11, ; 166
	i32 195, ; 167
	i32 25, ; 168
	i32 126, ; 169
	i32 74, ; 170
	i32 107, ; 171
	i32 279, ; 172
	i32 104, ; 173
	i32 2, ; 174
	i32 26, ; 175
	i32 226, ; 176
	i32 153, ; 177
	i32 244, ; 178
	i32 21, ; 179
	i32 47, ; 180
	i32 187, ; 181
	i32 41, ; 182
	i32 124, ; 183
	i32 248, ; 184
	i32 57, ; 185
	i32 174, ; 186
	i32 117, ; 187
	i32 255, ; 188
	i32 3, ; 189
	i32 290, ; 190
	i32 234, ; 191
	i32 122, ; 192
	i32 243, ; 193
	i32 145, ; 194
	i32 83, ; 195
	i32 88, ; 196
	i32 269, ; 197
	i32 178, ; 198
	i32 172, ; 199
	i32 291, ; 200
	i32 169, ; 201
	i32 177, ; 202
	i32 267, ; 203
	i32 227, ; 204
	i32 260, ; 205
	i32 213, ; 206
	i32 131, ; 207
	i32 228, ; 208
	i32 94, ; 209
	i32 3, ; 210
	i32 103, ; 211
	i32 32, ; 212
	i32 150, ; 213
	i32 154, ; 214
	i32 172, ; 215
	i32 186, ; 216
	i32 181, ; 217
	i32 151, ; 218
	i32 80, ; 219
	i32 139, ; 220
	i32 85, ; 221
	i32 19, ; 222
	i32 265, ; 223
	i32 49, ; 224
	i32 0, ; 225
	i32 59, ; 226
	i32 52, ; 227
	i32 4, ; 228
	i32 95, ; 229
	i32 237, ; 230
	i32 17, ; 231
	i32 151, ; 232
	i32 82, ; 233
	i32 235, ; 234
	i32 187, ; 235
	i32 184, ; 236
	i32 28, ; 237
	i32 238, ; 238
	i32 43, ; 239
	i32 62, ; 240
	i32 64, ; 241
	i32 168, ; 242
	i32 1, ; 243
	i32 284, ; 244
	i32 45, ; 245
	i32 24, ; 246
	i32 250, ; 247
	i32 206, ; 248
	i32 161, ; 249
	i32 106, ; 250
	i32 12, ; 251
	i32 266, ; 252
	i32 61, ; 253
	i32 232, ; 254
	i32 23, ; 255
	i32 91, ; 256
	i32 164, ; 257
	i32 12, ; 258
	i32 288, ; 259
	i32 216, ; 260
	i32 178, ; 261
	i32 28, ; 262
	i32 101, ; 263
	i32 180, ; 264
	i32 14, ; 265
	i32 176, ; 266
	i32 124, ; 267
	i32 89, ; 268
	i32 268, ; 269
	i32 241, ; 270
	i32 223, ; 271
	i32 9, ; 272
	i32 84, ; 273
	i32 263, ; 274
	i32 69, ; 275
	i32 164, ; 276
	i32 1, ; 277
	i32 5, ; 278
	i32 42, ; 279
	i32 232, ; 280
	i32 285, ; 281
	i32 154, ; 282
	i32 273, ; 283
	i32 110, ; 284
	i32 215, ; 285
	i32 188, ; 286
	i32 186, ; 287
	i32 220, ; 288
	i32 207, ; 289
	i32 119, ; 290
	i32 202, ; 291
	i32 249, ; 292
	i32 219, ; 293
	i32 155, ; 294
	i32 205, ; 295
	i32 129, ; 296
	i32 55, ; 297
	i32 134, ; 298
	i32 81, ; 299
	i32 29, ; 300
	i32 10, ; 301
	i32 167, ; 302
	i32 220, ; 303
	i32 255, ; 304
	i32 146, ; 305
	i32 92, ; 306
	i32 263, ; 307
	i32 58, ; 308
	i32 153, ; 309
	i32 189, ; 310
	i32 62, ; 311
	i32 86, ; 312
	i32 77, ; 313
	i32 45, ; 314
	i32 139, ; 315
	i32 286, ; 316
	i32 260, ; 317
	i32 72, ; 318
	i32 89, ; 319
	i32 173, ; 320
	i32 283, ; 321
	i32 133, ; 322
	i32 88, ; 323
	i32 277, ; 324
	i32 225, ; 325
	i32 192, ; 326
	i32 289, ; 327
	i32 256, ; 328
	i32 200, ; 329
	i32 199, ; 330
	i32 110, ; 331
	i32 40, ; 332
	i32 155, ; 333
	i32 4, ; 334
	i32 101, ; 335
	i32 68, ; 336
	i32 204, ; 337
	i32 58, ; 338
	i32 37, ; 339
	i32 251, ; 340
	i32 201, ; 341
	i32 193, ; 342
	i32 149, ; 343
	i32 54, ; 344
	i32 33, ; 345
	i32 212, ; 346
	i32 248, ; 347
	i32 21, ; 348
	i32 159, ; 349
	i32 224, ; 350
	i32 281, ; 351
	i32 136, ; 352
	i32 213, ; 353
	i32 87, ; 354
	i32 254, ; 355
	i32 143, ; 356
	i32 259, ; 357
	i32 231, ; 358
	i32 158, ; 359
	i32 6, ; 360
	i32 165, ; 361
	i32 30, ; 362
	i32 105, ; 363
	i32 236, ; 364
	i32 217, ; 365
	i32 281, ; 366
	i32 211, ; 367
	i32 246, ; 368
	i32 276, ; 369
	i32 163, ; 370
	i32 265, ; 371
	i32 136, ; 372
	i32 227, ; 373
	i32 57, ; 374
	i32 140, ; 375
	i32 226, ; 376
	i32 79, ; 377
	i32 182, ; 378
	i32 240, ; 379
	i32 72, ; 380
	i32 128, ; 381
	i32 25, ; 382
	i32 7, ; 383
	i32 171, ; 384
	i32 91, ; 385
	i32 278, ; 386
	i32 243, ; 387
	i32 221, ; 388
	i32 111, ; 389
	i32 9, ; 390
	i32 236, ; 391
	i32 179, ; 392
	i32 102, ; 393
	i32 19, ; 394
	i32 218, ; 395
	i32 264, ; 396
	i32 272, ; 397
	i32 291, ; 398
	i32 201, ; 399
	i32 32, ; 400
	i32 44, ; 401
	i32 29, ; 402
	i32 253, ; 403
	i32 55, ; 404
	i32 132, ; 405
	i32 112, ; 406
	i32 287, ; 407
	i32 53, ; 408
	i32 214, ; 409
	i32 6, ; 410
	i32 75, ; 411
	i32 233, ; 412
	i32 184, ; 413
	i32 109, ; 414
	i32 196, ; 415
	i32 262, ; 416
	i32 241, ; 417
	i32 100, ; 418
	i32 194, ; 419
	i32 166, ; 420
	i32 113, ; 421
	i32 278, ; 422
	i32 74, ; 423
	i32 282, ; 424
	i32 83, ; 425
	i32 284, ; 426
	i32 252, ; 427
	i32 156, ; 428
	i32 2, ; 429
	i32 24, ; 430
	i32 31, ; 431
	i32 115, ; 432
	i32 36, ; 433
	i32 16, ; 434
	i32 191, ; 435
	i32 50, ; 436
	i32 285, ; 437
	i32 174, ; 438
	i32 20, ; 439
	i32 244, ; 440
	i32 121, ; 441
	i32 150, ; 442
	i32 264, ; 443
	i32 129, ; 444
	i32 144, ; 445
	i32 202, ; 446
	i32 118, ; 447
	i32 27, ; 448
	i32 130, ; 449
	i32 98, ; 450
	i32 132, ; 451
	i32 149, ; 452
	i32 95, ; 453
	i32 123, ; 454
	i32 67, ; 455
	i32 70, ; 456
	i32 274, ; 457
	i32 242, ; 458
	i32 122, ; 459
	i32 69, ; 460
	i32 109, ; 461
	i32 191, ; 462
	i32 209, ; 463
	i32 148, ; 464
	i32 282, ; 465
	i32 116, ; 466
	i32 259, ; 467
	i32 125, ; 468
	i32 196, ; 469
	i32 131, ; 470
	i32 210, ; 471
	i32 75, ; 472
	i32 44, ; 473
	i32 71, ; 474
	i32 61, ; 475
	i32 96, ; 476
	i32 82, ; 477
	i32 41, ; 478
	i32 59, ; 479
	i32 217, ; 480
	i32 273, ; 481
	i32 208, ; 482
	i32 36, ; 483
	i32 38, ; 484
	i32 288, ; 485
	i32 156, ; 486
	i32 194, ; 487
	i32 96, ; 488
	i32 256, ; 489
	i32 237, ; 490
	i32 210, ; 491
	i32 133, ; 492
	i32 20, ; 493
	i32 63, ; 494
	i32 123, ; 495
	i32 73, ; 496
	i32 271, ; 497
	i32 160, ; 498
	i32 152, ; 499
	i32 5, ; 500
	i32 47, ; 501
	i32 140, ; 502
	i32 195, ; 503
	i32 135, ; 504
	i32 98, ; 505
	i32 121, ; 506
	i32 118, ; 507
	i32 138, ; 508
	i32 37, ; 509
	i32 66, ; 510
	i32 39, ; 511
	i32 180, ; 512
	i32 170, ; 513
	i32 160, ; 514
	i32 198, ; 515
	i32 71, ; 516
	i32 161, ; 517
	i32 212, ; 518
	i32 228, ; 519
	i32 125, ; 520
	i32 287, ; 521
	i32 66, ; 522
	i32 165, ; 523
	i32 175, ; 524
	i32 147, ; 525
	i32 43, ; 526
	i32 106, ; 527
	i32 46, ; 528
	i32 94, ; 529
	i32 30, ; 530
	i32 23, ; 531
	i32 162, ; 532
	i32 22, ; 533
	i32 134, ; 534
	i32 76, ; 535
	i32 190, ; 536
	i32 52, ; 537
	i32 230, ; 538
	i32 10, ; 539
	i32 247, ; 540
	i32 16, ; 541
	i32 135, ; 542
	i32 171, ; 543
	i32 222, ; 544
	i32 13, ; 545
	i32 216, ; 546
	i32 15, ; 547
	i32 120, ; 548
	i32 189, ; 549
	i32 85, ; 550
	i32 145, ; 551
	i32 22, ; 552
	i32 33, ; 553
	i32 77, ; 554
	i32 239, ; 555
	i32 176, ; 556
	i32 143, ; 557
	i32 78, ; 558
	i32 258, ; 559
	i32 240, ; 560
	i32 40, ; 561
	i32 26, ; 562
	i32 272, ; 563
	i32 270, ; 564
	i32 105, ; 565
	i32 183, ; 566
	i32 108, ; 567
	i32 219, ; 568
	i32 7, ; 569
	i32 283, ; 570
	i32 42, ; 571
	i32 157, ; 572
	i32 206, ; 573
	i32 144, ; 574
	i32 252, ; 575
	i32 234, ; 576
	i32 15, ; 577
	i32 142, ; 578
	i32 8, ; 579
	i32 262, ; 580
	i32 128, ; 581
	i32 280, ; 582
	i32 92 ; 583
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 68175bbe5a39140c642dab294cf184ecf72eece0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
