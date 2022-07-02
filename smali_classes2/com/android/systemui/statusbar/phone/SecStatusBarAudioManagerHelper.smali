.class public Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;
.super Ljava/lang/Object;
.source "SecStatusBarAudioManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "StatusBarAudioManagerHelper"

.field private static sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;


# instance fields
.field protected mCachedRingerMode:I

.field private mManager:Landroid/media/AudioManager;

.field private mReceiver:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    const/4 v1, -0x1

    .line 44
    iput v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    .line 117
    new-instance v1, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mReceiver:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    .line 52
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mReceiver:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->registerReceiver()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mReceiver:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    return-object p0
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;
    .locals 1

    .line 63
    sget-object v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    .line 66
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->sInstance:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    return-object v0
.end method

.method private getManager()Landroid/media/AudioManager;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mManager:Landroid/media/AudioManager;

    return-object p0
.end method


# virtual methods
.method public getAudioMode()I
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    return p0
.end method

.method public getRemainingMuteIntervalMs()I
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioManager;->getRemainingMuteIntervalMs()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRingerMode()I
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p0

    return p0
.end method

.method public getRingerMode(Z)I
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 90
    iget p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    .line 93
    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p0

    :goto_0
    return v1
.end method

.method public setRingerModeInternal(I)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string/jumbo v1, "setRingerModeInternal("

    if-nez v0, :cond_0

    .line 74
    sget-object p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") mStatusBar==null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    .line 80
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") AudioManager==null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateTempMuteMuteInterval()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getManager()Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setMuteInterval(I)V

    return-void
.end method
