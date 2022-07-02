.class final Lcom/android/systemui/util/RoundedCornerProgressDrawable$RoundedCornerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RoundedCornerProgressDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/RoundedCornerProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoundedCornerState"
.end annotation


# instance fields
.field private final wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable$ConstantState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "wrappedState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/RoundedCornerProgressDrawable$RoundedCornerState;->wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/util/RoundedCornerProgressDrawable$RoundedCornerState;->wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/util/RoundedCornerProgressDrawable$RoundedCornerState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/android/systemui/util/RoundedCornerProgressDrawable$RoundedCornerState;->wrappedState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type android.graphics.drawable.DrawableWrapper"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/DrawableWrapper;

    .line 79
    new-instance p1, Lcom/android/systemui/util/RoundedCornerProgressDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/systemui/util/RoundedCornerProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method
