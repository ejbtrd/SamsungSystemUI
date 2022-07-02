.class Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "AnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$1;->this$0:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)F
    .locals 0

    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->getDetailedCardScale()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 18
    check-cast p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$1;->getValue(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;F)V
    .locals 0

    .line 26
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->updateDetailedCardScale(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 18
    check-cast p1, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$1;->setValue(Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;F)V

    return-void
.end method
