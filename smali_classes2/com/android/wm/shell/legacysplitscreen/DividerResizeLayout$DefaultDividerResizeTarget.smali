.class Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;
.super Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;
.source "DividerResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultDividerResizeTarget"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V
    .locals 0

    .line 1221
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    .line 1222
    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;-><init>(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/graphics/Rect;)V

    return-void
.end method

.method private getInsets()Landroid/graphics/Rect;
    .locals 1

    .line 1239
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_SPLIT_LARGE_SCREEN_BOUNDS_POLICY:Z

    if-eqz v0, :cond_0

    .line 1240
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$2900(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 1242
    :cond_0
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_BOUNDS_POLICY_WITH_EXTRA_STABLE_INSETS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    .line 1243
    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->hasExtraStableInset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object p0

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->extraInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected calculateBoundsForPosition(ILandroid/graphics/Rect;)V
    .locals 7

    .line 1227
    invoke-virtual {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;->getDirection()I

    move-result v1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    .line 1228
    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v3

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$1000(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v4

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;

    .line 1229
    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;->access$2800(Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout;)I

    move-result v5

    invoke-direct {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DefaultDividerResizeTarget;->getInsets()Landroid/graphics/Rect;

    move-result-object v6

    move v0, p1

    move-object v2, p2

    .line 1227
    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    return-void
.end method

.method protected getDirection()I
    .locals 0

    .line 1234
    iget p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->mDirection:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerResizeLayout$DividerResizeTarget;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
