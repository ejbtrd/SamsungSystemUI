.class Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecStatusBarAudioManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecStatusBarAudioManagerHelperBroadcastReceiver"
.end annotation


# instance fields
.field mIsRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->getRingerMode(Z)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->mCachedRingerMode:I

    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;->access$100(Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper;)Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarAudioManagerHelper$SecStatusBarAudioManagerHelperBroadcastReceiver;->mIsRegistered:Z

    return-void
.end method
