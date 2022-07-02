.class Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "QSMediaPlayerBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 676
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 694
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Z)I

    move-result p0

    return p0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 5

    .line 705
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaListSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    .line 707
    iget-object v4, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v4}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-virtual {v4}, Lcom/android/systemui/media/SecMediaControlPanel;->getView()Landroid/widget/LinearLayout;

    move-result-object v4

    .line 708
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 710
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 711
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p0, v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Z)I

    move-result p0

    sub-int/2addr p0, v0

    sub-int v2, p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    if-ne v2, v3, :cond_3

    const/4 v2, -0x2

    :cond_3
    return v2
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Z)I

    move-result v0

    sub-int/2addr v0, v1

    sub-int p2, v0, p2

    .line 684
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$7;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/media/SecQSMediaPlayerData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/media/SecQSMediaPlayerData;->getMediaList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-virtual {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->getView()Landroid/widget/LinearLayout;

    move-result-object p0

    .line 685
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 686
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 688
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
