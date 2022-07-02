.class Lcom/android/systemui/volume/util/BroadcastManager$5;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/util/BroadcastManager;->registerOpenThemeChangedAction(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/util/BroadcastManager;

.field final synthetic val$openThemeRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager$5;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastManager$5;->val$openThemeRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager$5;->val$openThemeRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
