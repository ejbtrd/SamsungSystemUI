.class public Lcom/android/systemui/edgelighting/policy/EdgeLightingPolicyUpdateService;
.super Landroid/app/IntentService;
.source "EdgeLightingPolicyUpdateService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "EdgeLightingPolicyUpdateService"

    .line 24
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static startActionUpdate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ELPolicyUpdateService"

    const-string/jumbo v1, "startActionUpdate"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/edgelighting/policy/EdgeLightingPolicyUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.systemui.edgelighting.action.UPDATE_POLICY"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.systemui.edgelighting.action.UPDATE_POLICY"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 32
    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingServerPolicy(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
