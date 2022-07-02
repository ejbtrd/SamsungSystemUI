.class public final Lcom/android/systemui/doze/AODIntentService_MembersInjector;
.super Ljava/lang/Object;
.source "AODIntentService_MembersInjector.java"


# direct methods
.method public static injectMHandler(Lcom/android/systemui/doze/AODIntentService;Landroid/os/Handler;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/doze/AODIntentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static injectMPluginAODManagerLazy(Lcom/android/systemui/doze/AODIntentService;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/doze/AODIntentService;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/android/systemui/doze/AODIntentService;->mPluginAODManagerLazy:Ldagger/Lazy;

    return-void
.end method
