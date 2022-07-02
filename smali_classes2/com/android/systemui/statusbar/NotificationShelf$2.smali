.class Lcom/android/systemui/statusbar/NotificationShelf$2;
.super Ljava/lang/Object;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationShelf;->updateContinuousClipping(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;

.field final synthetic val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/StatusBarIconView;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-ne p1, v0, :cond_1

    .line 687
    invoke-static {}, Lcom/android/systemui/statusbar/NotificationShelf;->access$300()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 688
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 691
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 692
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationShelf;->access$300()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 693
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelf$2;->val$icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationShelf;->access$500()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
