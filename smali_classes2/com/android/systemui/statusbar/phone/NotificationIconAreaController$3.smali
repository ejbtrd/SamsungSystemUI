.class Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$3;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationIconContainer$OnXTranslationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-le p1, v0, :cond_1

    .line 917
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$3;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$100(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    :cond_1
    return-void
.end method
