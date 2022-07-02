.class Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$2;
.super Ljava/lang/Object;
.source "NotificationIconTransitionController.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->animateDetailAppearing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$2;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$2;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->access$302(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;Z)Z

    .line 196
    iget-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController$2;->this$0:Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->access$400(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    return-void
.end method
