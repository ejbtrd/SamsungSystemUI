.class Landroidx/appcompat/widget/SeslAbsSeekBar$2;
.super Ljava/lang/Object;
.source "SeslAbsSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SeslAbsSeekBar;->initMuteAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslAbsSeekBar;)V
    .locals 0

    .line 2019
    iput-object p1, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$2;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2022
    iget-object v0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$2;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->access$102(Landroidx/appcompat/widget/SeslAbsSeekBar;I)I

    .line 2023
    iget-object p0, p0, Landroidx/appcompat/widget/SeslAbsSeekBar$2;->this$0:Landroidx/appcompat/widget/SeslAbsSeekBar;

    invoke-static {p0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->access$100(Landroidx/appcompat/widget/SeslAbsSeekBar;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->onSlidingRefresh(I)V

    return-void
.end method
