.class public Lcom/android/systemui/doze/AODIntentService;
.super Landroid/app/IntentService;
.source "AODIntentService.java"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$obxWwc-buOTEGiMGZ6XOPcvWDp0(Lcom/android/systemui/doze/AODIntentService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/AODIntentService;->lambda$onHandleIntent$0(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "AODIntentService"

    .line 28
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/AODIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/doze/AODIntentService;)V

    return-void
.end method

.method private synthetic lambda$onHandleIntent$0(Landroid/content/Intent;)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/doze/AODIntentService;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/PluginAODManager;->sendIntent(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/systemui/doze/AODIntentService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/AODIntentService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/AODIntentService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
