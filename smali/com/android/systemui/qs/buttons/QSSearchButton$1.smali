.class Lcom/android/systemui/qs/buttons/QSSearchButton$1;
.super Ljava/lang/Object;
.source "QSSearchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/buttons/QSSearchButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/buttons/QSSearchButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/buttons/QSSearchButton;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSSearchButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSearchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 47
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSSearchButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSearchButton;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSSearchButton;->access$000(Lcom/android/systemui/qs/buttons/QSSearchButton;)Z

    move-result p1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Click search button, isSfinderEnabled()= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSSearchButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSearchButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSearchButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSSearchButton;->access$100(Lcom/android/systemui/qs/buttons/QSSearchButton;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/buttons/QSSearchButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSearchButton;

    invoke-static {p1}, Lcom/android/systemui/qs/buttons/QSSearchButton;->access$200(Lcom/android/systemui/qs/buttons/QSSearchButton;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSSearchButton$1;->this$0:Lcom/android/systemui/qs/buttons/QSSearchButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSSearchButton;->access$200(Lcom/android/systemui/qs/buttons/QSSearchButton;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->sec_quick_settings_finder_disabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 56
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1001"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
