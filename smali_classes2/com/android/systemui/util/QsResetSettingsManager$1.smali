.class Lcom/android/systemui/util/QsResetSettingsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "QsResetSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/QsResetSettingsManager;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/QsResetSettingsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/QsResetSettingsManager;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/systemui/util/QsResetSettingsManager$1;->this$0:Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoTileManager"

    const-string v0, "Soft reset Started"

    .line 79
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/util/QsResetSettingsManager$1;->this$0:Lcom/android/systemui/util/QsResetSettingsManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/QsResetSettingsManager;->runReset()V

    :cond_0
    return-void
.end method
