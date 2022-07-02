.class public Lcom/android/systemui/edgelighting/turnover/CallStateObserver;
.super Ljava/lang/Object;
.source "CallStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mState:I

.field private mStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mState:I

    .line 28
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$1;-><init>(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/turnover/CallStateObserver$2;-><init>(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const-string v0, "phone"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 47
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)I
    .locals 0

    .line 14
    iget p0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mState:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;I)I
    .locals 0

    .line 14
    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/edgelighting/turnover/CallStateObserver;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public registerListener(Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/CallStateObserver;->mStateListener:Lcom/android/systemui/edgelighting/turnover/CallStateObserver$CallStateListener;

    return-void
.end method
