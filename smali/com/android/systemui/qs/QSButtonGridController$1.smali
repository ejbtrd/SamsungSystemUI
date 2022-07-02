.class Lcom/android/systemui/qs/QSButtonGridController$1;
.super Ljava/lang/Object;
.source "QSButtonGridController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSButtonGridController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNightMode:Z

.field final synthetic this$0:Lcom/android/systemui/qs/QSButtonGridController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSButtonGridController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController$1;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSButtonGridController$1;->mNightMode:Z

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSButtonGridController$1;->mNightMode:Z

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigChanged(NightMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSButtonGridController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSButtonGridController$1;->mNightMode:Z

    .line 48
    iget-object p1, p0, Lcom/android/systemui/qs/QSButtonGridController$1;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    new-instance v0, Lcom/android/systemui/qs/QSButtonGridDialog;

    iget-object p0, p0, Lcom/android/systemui/qs/QSButtonGridController$1;->this$0:Lcom/android/systemui/qs/QSButtonGridController;

    invoke-static {p0}, Lcom/android/systemui/qs/QSButtonGridController;->access$100(Lcom/android/systemui/qs/QSButtonGridController;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSButtonGridDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSButtonGridController;->access$002(Lcom/android/systemui/qs/QSButtonGridController;Lcom/android/systemui/qs/QSButtonGridDialog;)Lcom/android/systemui/qs/QSButtonGridDialog;

    :cond_0
    return-void
.end method
