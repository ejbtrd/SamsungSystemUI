.class public Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;
.super Ljava/lang/Object;
.source "QSFactoryImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSFactory;


# instance fields
.field private final mAirplaneModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AlarmTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatterySaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BatterySaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlueLightFilterTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BlueLightFilterTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraToggleTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CameraToggleTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCastTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCellularTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorInversionTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomTileBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/external/CustomTile$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataSaverTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceControlsTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DeviceControlsTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDndTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlashlightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mHotspotTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternetTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/InternetTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemoryTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMicrophoneToggleTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMobileDataTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/MobileDataTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mNightDisplayTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mQsHostLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuickAccessWalletTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mReduceBrightColorsTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationLockTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenCaptureTile:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ScreenCaptureTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenRecordTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ScreenRecordTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoundModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/SoundModeTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiModeNightTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkModeTileProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/qs/QSHost;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/external/CustomTile$Builder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WifiTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/InternetTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BluetoothTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CellularTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DndTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ColorInversionTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AirplaneModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/WorkModeTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/RotationLockTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/FlashlightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/LocationTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CastTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/HotspotTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/MobileDataTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UserTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BatterySaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DataSaverTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/NightDisplayTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/UiModeNightTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ScreenCaptureTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ScreenRecordTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/ReduceBrightColorsTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/CameraToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/MicrophoneToggleTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/DeviceControlsTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/AlarmTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/QuickAccessWalletTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/BlueLightFilterTile;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/tiles/SoundModeTile;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 147
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mQsHostLazy:Ldagger/Lazy;

    move-object v1, p2

    .line 148
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCustomTileBuilderProvider:Ljavax/inject/Provider;

    move-object v1, p3

    .line 150
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWifiTileProvider:Ljavax/inject/Provider;

    move-object v1, p4

    .line 151
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mInternetTileProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 152
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBluetoothTileProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 153
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCellularTileProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 154
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDndTileProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 155
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mColorInversionTileProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 156
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAirplaneModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 157
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWorkModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 158
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRotationLockTileProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 159
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mFlashlightTileProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 160
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLocationTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 161
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCastTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 162
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHotspotTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 164
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMobileDataTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 165
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUserTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 166
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBatterySaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    .line 167
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDataSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p20

    .line 168
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mNightDisplayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p21

    .line 171
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMemoryTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p22

    .line 172
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUiModeNightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p24

    .line 173
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mScreenRecordTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p25

    .line 174
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mReduceBrightColorsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 175
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCameraToggleTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 176
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMicrophoneToggleTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 177
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDeviceControlsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 178
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAlarmTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 179
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mQuickAccessWalletTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 181
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBlueLightFilterTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 182
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mSoundModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p23

    .line 183
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mScreenCaptureTile:Ljavax/inject/Provider;

    return-void
.end method

.method private createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;
    .locals 3

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "RotationLock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "MicrophoneToggle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "AirplaneMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "BlueLightFilter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "Flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "SoundMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "WorkMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "Wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_9
    const-string v0, "Dnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_a
    const-string v0, "MobileData"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_b
    const-string v0, "Bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_c
    const-string v0, "CameraToggle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_d
    const-string v0, "Hotspot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_e
    const-string v0, "ScreenCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_f
    const-string v0, "UiModeNight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mQsHostLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSHost;->isUnsupportedTile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "QSFactory"

    if-eqz v0, :cond_10

    .line 295
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported tile spec: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_10
    const-string v0, "custom("

    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 300
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCustomTileBuilderProvider:Ljavax/inject/Provider;

    .line 301
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/external/CustomTile$Builder;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mQsHostLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSHost;

    invoke-interface {p0}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object p0

    .line 300
    invoke-static {v0, p1, p0}, Lcom/android/systemui/qs/external/CustomTile;->create(Lcom/android/systemui/qs/external/CustomTile$Builder;Ljava/lang/String;Landroid/content/Context;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p0

    return-object p0

    .line 305
    :cond_11
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_12

    const-string v0, "dbg:mem"

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 307
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMemoryTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 312
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No stock tile spec: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 214
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mLocationTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 210
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mRotationLockTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 220
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMicrophoneToggleTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 206
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mAirplaneModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 228
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBlueLightFilterTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 212
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mFlashlightTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 230
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mSoundModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 208
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWorkModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 200
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mWifiTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 204
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mDndTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 225
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mMobileDataTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 202
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mBluetoothTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 218
    :pswitch_c
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mCameraToggleTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 216
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mHotspotTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 232
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mScreenCaptureTile:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    .line 222
    :pswitch_f
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->mUiModeNightTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5ff4581f -> :sswitch_f
        -0x5d1742e6 -> :sswitch_e
        -0x5b3cc951 -> :sswitch_d
        -0x2c6ef107 -> :sswitch_c
        -0x13331d72 -> :sswitch_b
        -0x7a05074 -> :sswitch_a
        0x10cfa -> :sswitch_9
        0x292335 -> :sswitch_8
        0x5eae874 -> :sswitch_7
        0xb667732 -> :sswitch_6
        0x304d9746 -> :sswitch_5
        0x35e29754 -> :sswitch_4
        0x4c31a835 -> :sswitch_3
        0x5bcd7d3e -> :sswitch_2
        0x6d58ade9 -> :sswitch_1
        0x752a03d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->createTileInternal(Ljava/lang/String;)Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->initialize()V

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->postStale()V

    :cond_0
    return-object p0
.end method

.method public createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 0

    .line 318
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 321
    new-instance p2, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-object p2

    .line 323
    :cond_0
    new-instance p2, Lcom/android/systemui/qs/tileimpl/SecQSTileView;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    return-object p2
.end method
