.class Lcom/android/systemui/qs/buttons/QSPowerButton$1;
.super Ljava/lang/Object;
.source "QSPowerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/buttons/QSPowerButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/buttons/QSPowerButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/buttons/QSPowerButton;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSPowerButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSPowerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "QSPowerButton"

    const-string v0, "!@[Shutdown] Click power off button."

    .line 44
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSPowerButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSPowerButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSPowerButton;->access$000(Lcom/android/systemui/qs/buttons/QSPowerButton;)V

    .line 47
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1002"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
