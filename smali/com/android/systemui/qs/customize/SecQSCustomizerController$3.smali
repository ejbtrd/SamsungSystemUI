.class Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;
.super Ljava/lang/Object;
.source "SecQSCustomizerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mResetButton.onClick() : mCustomizing  = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$600(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecQSCustomizerController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$700(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$800(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$800(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$3;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$900(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V

    :cond_1
    return-void
.end method
