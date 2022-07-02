.class public final Lcom/android/systemui/media/SecSeekBarObserver;
.super Ljava/lang/Object;
.source "SecSeekBarObserver.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/android/systemui/media/SecSeekBarViewModel$Progress;",
        ">;"
    }
.end annotation


# instance fields
.field private final holder:Lcom/android/systemui/media/SecPlayerViewHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecPlayerViewHolder;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/SecPlayerViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V
    .locals 6
    .param p1    # Lcom/android/systemui/media/SecSeekBarViewModel$Progress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->getEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 50
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getElapsedTimeView()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getTotalTimeView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->getSeekAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xff

    :cond_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->getSeekAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    invoke-virtual {p1}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->getDuration()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    .line 66
    iget-object v1, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v1}, Lcom/android/systemui/media/SecPlayerViewHolder;->getTotalTimeView()Landroid/widget/TextView;

    move-result-object v1

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    .line 67
    div-long/2addr v2, v4

    .line 66
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->getElapsedTime()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 71
    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getSeekBar()Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    .line 72
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarObserver;->holder:Lcom/android/systemui/media/SecPlayerViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getElapsedTimeView()Landroid/widget/TextView;

    move-result-object p0

    int-to-long v0, p1

    .line 73
    div-long/2addr v0, v4

    .line 72
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/SecSeekBarObserver;->onChanged(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    return-void
.end method
