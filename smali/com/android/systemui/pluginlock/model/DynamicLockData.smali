.class public Lcom/android/systemui/pluginlock/model/DynamicLockData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# instance fields
.field VERSION:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field landscapeAvailable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "landscape_available"
    .end annotation
.end field

.field private mCaptureData:Lcom/android/systemui/pluginlock/model/CaptureData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capture_info"
    .end annotation
.end field

.field private mCustomShortcut:Lcom/android/systemui/pluginlock/model/CustomShortcut;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_shortcut"
    .end annotation
.end field

.field private mFingerPrintData:Lcom/android/systemui/pluginlock/model/FingerPrintData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "finger_print_info"
    .end annotation
.end field

.field private mIndicationData:Lcom/android/systemui/pluginlock/model/IndicationData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "indication_info"
    .end annotation
.end field

.field private mMusicData:Lcom/android/systemui/pluginlock/model/MusicData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "music_info"
    .end annotation
.end field

.field private mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/NonSwipeModeData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "non_swipe_info"
    .end annotation
.end field

.field private mNotificationData:Lcom/android/systemui/pluginlock/model/NotificationData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_info"
    .end annotation
.end field

.field private mServiceBoxData:Lcom/android/systemui/pluginlock/model/ServiceBoxData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_box_info"
    .end annotation
.end field

.field private mShortcutData:Lcom/android/systemui/pluginlock/model/ShortcutData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_info"
    .end annotation
.end field

.field private mStatusBarIconVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_bar_icon_visibility"
    .end annotation
.end field

.field private mStatusBarNetworkVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status_bar_network_visibility"
    .end annotation
.end field

.field private mWallpaperData:Lcom/android/systemui/pluginlock/model/WallpaperData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_info"
    .end annotation
.end field

.field private origin:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "origin"
    .end annotation
.end field

.field portraitAvailable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "portrait_available"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->VERSION:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->origin:Ljava/lang/Integer;

    .line 19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->portraitAvailable:Ljava/lang/Boolean;

    .line 22
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->landscapeAvailable:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarIconVisibility:Ljava/lang/Integer;

    .line 28
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarNetworkVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public static fromJSon(Ljava/lang/String;)Lcom/android/systemui/pluginlock/model/DynamicLockData;
    .locals 2

    .line 248
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 250
    :try_start_0
    const-class v1, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/pluginlock/model/DynamicLockData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 239
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    return-object p0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->clone()Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureData()Lcom/android/systemui/pluginlock/model/CaptureData;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/pluginlock/model/CaptureData;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/systemui/pluginlock/model/CaptureData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/CaptureData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/pluginlock/model/CaptureData;

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/pluginlock/model/CaptureData;

    return-object p0
.end method

.method public getCustomShortcut()Lcom/android/systemui/pluginlock/model/CustomShortcut;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCustomShortcut:Lcom/android/systemui/pluginlock/model/CustomShortcut;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/android/systemui/pluginlock/model/CustomShortcut;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/CustomShortcut;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCustomShortcut:Lcom/android/systemui/pluginlock/model/CustomShortcut;

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCustomShortcut:Lcom/android/systemui/pluginlock/model/CustomShortcut;

    return-object p0
.end method

.method public getFingerPrintData()Lcom/android/systemui/pluginlock/model/FingerPrintData;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mFingerPrintData:Lcom/android/systemui/pluginlock/model/FingerPrintData;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/android/systemui/pluginlock/model/FingerPrintData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/FingerPrintData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mFingerPrintData:Lcom/android/systemui/pluginlock/model/FingerPrintData;

    .line 217
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mFingerPrintData:Lcom/android/systemui/pluginlock/model/FingerPrintData;

    return-object p0
.end method

.method public getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mIndicationData:Lcom/android/systemui/pluginlock/model/IndicationData;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/android/systemui/pluginlock/model/IndicationData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mIndicationData:Lcom/android/systemui/pluginlock/model/IndicationData;

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mIndicationData:Lcom/android/systemui/pluginlock/model/IndicationData;

    return-object p0
.end method

.method public getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mMusicData:Lcom/android/systemui/pluginlock/model/MusicData;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/systemui/pluginlock/model/MusicData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/MusicData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mMusicData:Lcom/android/systemui/pluginlock/model/MusicData;

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mMusicData:Lcom/android/systemui/pluginlock/model/MusicData;

    return-object p0
.end method

.method public getNonSwipeModeData()Lcom/android/systemui/pluginlock/model/NonSwipeModeData;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/NonSwipeModeData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    return-object p0
.end method

.method public getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/NotificationData;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/android/systemui/pluginlock/model/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/NotificationData;

    return-object p0
.end method

.method public getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    return-object p0
.end method

.method public getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/ShortcutData;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/systemui/pluginlock/model/ShortcutData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/ShortcutData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/ShortcutData;

    .line 175
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/ShortcutData;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->VERSION:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWallpaperData()Lcom/android/systemui/pluginlock/model/WallpaperData;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/WallpaperData;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/systemui/pluginlock/model/WallpaperData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/model/WallpaperData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/WallpaperData;

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/WallpaperData;

    return-object p0
.end method

.method public isDlsData()Z
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->origin:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLandscapeAvailable()Z
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->landscapeAvailable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPortraitAvailable()Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->portraitAvailable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isStatusBarIconVisible()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarIconVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarIconVisibility:Ljava/lang/Integer;

    .line 94
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isStatusBarNetworkVisible()Z
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarNetworkVisibility:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarNetworkVisibility:Ljava/lang/Integer;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setCaptureData(Lcom/android/systemui/pluginlock/model/CaptureData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 194
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/pluginlock/model/CaptureData;

    :cond_0
    return-void
.end method

.method public setCustomShortcut(Lcom/android/systemui/pluginlock/model/CustomShortcut;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mCustomShortcut:Lcom/android/systemui/pluginlock/model/CustomShortcut;

    return-void
.end method

.method public setFingerPrintData(Lcom/android/systemui/pluginlock/model/FingerPrintData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 222
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mFingerPrintData:Lcom/android/systemui/pluginlock/model/FingerPrintData;

    :cond_0
    return-void
.end method

.method public setIndicationData(Lcom/android/systemui/pluginlock/model/IndicationData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 208
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mIndicationData:Lcom/android/systemui/pluginlock/model/IndicationData;

    :cond_0
    return-void
.end method

.method public setLandscapeAvailable(Z)V
    .locals 0

    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->landscapeAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public setNonSwipeData(Lcom/android/systemui/pluginlock/model/NonSwipeModeData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 166
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/pluginlock/model/NonSwipeModeData;

    :cond_0
    return-void
.end method

.method public setNotificationData(Lcom/android/systemui/pluginlock/model/NotificationData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/pluginlock/model/NotificationData;

    :cond_0
    return-void
.end method

.method public setOrigin(I)V
    .locals 0

    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->origin:Ljava/lang/Integer;

    return-void
.end method

.method public setPortraitAvailable(Z)V
    .locals 0

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->portraitAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public setServiceBoxData(Lcom/android/systemui/pluginlock/model/ServiceBoxData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 124
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    :cond_0
    return-void
.end method

.method public setShortcutData(Lcom/android/systemui/pluginlock/model/ShortcutData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 180
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/pluginlock/model/ShortcutData;

    :cond_0
    return-void
.end method

.method public setStatusBarIconVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarIconVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public setStatusBarNetworkVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mStatusBarNetworkVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaerData(Lcom/android/systemui/pluginlock/model/WallpaperData;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 152
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/pluginlock/model/WallpaperData;

    :cond_0
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .line 243
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 244
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
