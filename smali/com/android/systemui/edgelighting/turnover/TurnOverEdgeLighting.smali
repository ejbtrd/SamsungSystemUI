.class public Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;
.super Ljava/lang/Object;
.source "TurnOverEdgeLighting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;,
        Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;,
        Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;,
        Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;,
        Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;
    }
.end annotation


# static fields
.field public static EFFECT_COLOR_TURN_OVER:I = -0x984ab5

.field private static final TAG:Ljava/lang/String; = "TurnOverEdgeLighting"


# instance fields
.field private final STATE_MODE_CALL:I

.field private final STATE_MODE_IDLE:I

.field private final STATE_MODE_NOTI:I

.field private final UPSIDE_TURN_OVER:I

.field private final UPSIDE_TURN_RIGHT:I

.field private final UPSIDE_UNKNOWN:I

.field private mCallStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;

.field private mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

.field private mIsEnabled:Z

.field private mIsRinging:Z

.field private mIsUpsideDown:I

.field private mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

.field private mRequestor:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener$Requestor;

.field private mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

.field private mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->UPSIDE_UNKNOWN:I

    const/4 v1, 0x1

    .line 33
    iput v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->UPSIDE_TURN_OVER:I

    const/4 v2, 0x2

    .line 34
    iput v2, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->UPSIDE_TURN_RIGHT:I

    .line 35
    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsEnabled:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsRinging:Z

    .line 38
    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->STATE_MODE_IDLE:I

    .line 39
    iput v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->STATE_MODE_NOTI:I

    .line 40
    iput v2, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->STATE_MODE_CALL:I

    .line 41
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    .line 42
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;

    .line 57
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$2;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

    .line 151
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    invoke-direct {v0, p1}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener$Requestor;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mRequestor:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener$Requestor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpdateDownListener:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker$Listener;

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public isUpsideDown()Z
    .locals 1

    .line 147
    iget p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->onDestroy()V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->registerListener(Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;)V

    .line 168
    iput-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    return-void
.end method

.method public onNotification()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 80
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2

    .line 75
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    return v2
.end method

.method public onNotificationEnd()Z
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->onNotificationEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 96
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    return v2

    .line 90
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    return v2
.end method

.method public setEnable(Z)V
    .locals 3

    .line 103
    sget-object v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsEnabled:Z

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    if-nez p1, :cond_2

    .line 107
    new-instance p1, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 108
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->registerListener(Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->registerListener(Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;)V

    .line 113
    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCallStateObserver:Lcom/android/systemui/edgelighting/turnover/CallStateObserver;

    .line 115
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTurnOverLightingListener(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener$Requestor;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    .line 161
    iput-object p2, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mRequestor:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener$Requestor;

    return-void
.end method

.method public stopTurnOver()V
    .locals 2

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    .line 125
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$1;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mCurrentTurnMode:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$TurnOverLightingListener;->onIdle()V

    .line 128
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsRinging:Z

    if-eqz p0, :cond_1

    const-string p0, "407"

    const-string v0, "4082"

    .line 130
    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "406"

    const-string v0, "4076"

    .line 133
    invoke-static {p0, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
