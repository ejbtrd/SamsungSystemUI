.class public abstract Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;
.super Ljava/lang/Object;
.source "ControlsSpinner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/view/ControlsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SelectionItem"
.end annotation


# instance fields
.field private final appName:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final componentName:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final icon:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "appName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->appName:Ljava/lang/CharSequence;

    .line 132
    iput-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-object p3, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->appName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 133
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
