.class Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;
.super Landroid/os/Handler;
.source "EdgeLightingReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/EdgeLightingReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/os/Looper;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "pkg_name"

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 p1, 0x4

    if-eq v1, p1, :cond_2

    const/4 p1, 0x5

    if-eq v1, p1, :cond_0

    goto/16 :goto_0

    .line 112
    :cond_0
    sget-boolean p1, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_AOD:Z

    if-nez p1, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->setEdgeLightingShowCondition(Landroid/content/ContentResolver;I)V

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    const-string v3, "com.samsung.android.app.edgelighting.PACKAGE_ADDED"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->access$000(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/Class;)V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    const-string v3, "com.samsung.android.app.edgelighting.PACKAGE_REMOVED"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->access$000(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/Class;)V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    const-string v2, "com.samsung.android.app.edgelighting.PACKAGE_REPLACED"

    invoke-static {p0, v0, v2, p1, v1}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->access$000(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/Class;)V

    .line 119
    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 120
    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->isAllApplicationEnabled()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getEnabledEdgeLightingItems()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;ZLjava/util/HashMap;)V

    goto/16 :goto_0

    .line 109
    :cond_2
    invoke-static {v0}, Lcom/android/systemui/edgelighting/policy/EdgeLightingPolicyUpdateService;->startActionUpdate(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 93
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    .line 94
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string p1, "com.samsung.android.edgelightingeffectunit"

    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 96
    invoke-static {v0, p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getPackageDisableState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 98
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "preload/"

    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 101
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 103
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getDefalutStyle()Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->setEdgeLightingStyleType(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    .line 81
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 83
    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->replaceSilentInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "EdgeLightingReceiver"

    const-string p1, "PACKAGE_REPLACED error"

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    .line 72
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 74
    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p1

    .line 75
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->removeSilentInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    .line 64
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 66
    invoke-static {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->addSilentInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method
