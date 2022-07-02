.class final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$updateSubscreenNotificationView$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->updateSubscreenNotificationView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$updateSubscreenNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$updateSubscreenNotificationView$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$updateSubscreenNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getPresentation$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->getContents()Landroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 264
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$updateSubscreenNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getPresentation$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$SubscreenNotificationPresentation;->getContents()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$updateSubscreenNotificationView$1;->$view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method
