.class final Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "SecSeekBarViewModel.kt"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SecSeekBarViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekBarChangeListener"
.end annotation


# instance fields
.field private final viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/SecSeekBarViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 1
    .param p1    # Landroidx/appcompat/widget/SeslSeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 281
    iget-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/media/SecSeekBarViewModel;->setOnSeekBarPreesedValue(J)V

    .line 283
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekProgress(J)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1
    .param p1    # Landroidx/appcompat/widget/SeslSeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeekStarting()V

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 2
    .param p1    # Landroidx/appcompat/widget/SeslSeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$SeekBarChangeListener;->viewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->getProgress()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel;->onSeek(J)V

    return-void
.end method
