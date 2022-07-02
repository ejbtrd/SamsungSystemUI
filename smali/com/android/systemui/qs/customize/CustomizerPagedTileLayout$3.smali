.class Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;
.super Ljava/lang/Object;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$200(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$200(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v0

    int-to-float v1, p1

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    .line 132
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p2, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$402(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;F)F

    .line 133
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 134
    iget-object p2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    .line 135
    invoke-virtual {p3}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 134
    :goto_0
    invoke-interface {p2, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;->onPageChanged(Z)V

    :cond_3
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$200(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$300(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;->onPageChanged(Z)V

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v3, v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v3, :cond_5

    .line 118
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->access$000(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int p1, v0, p1

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 122
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPanelTileLayout:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setCustomizerPage(I)V

    :cond_5
    return-void
.end method
