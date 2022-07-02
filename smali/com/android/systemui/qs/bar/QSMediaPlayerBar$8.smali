.class Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
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

    .line 787
    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 1

    .line 808
    iget-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p3}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 809
    iget-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Z)I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_3

    :cond_1
    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 810
    invoke-static {p3}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1400(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p3}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1500(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 811
    iget-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1600(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 812
    iget-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1700(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 813
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1800(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    return-void

    .line 816
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p0, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;I)V

    goto :goto_0

    .line 819
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-static {p3, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2302(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;F)F

    .line 820
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)F

    move-result p0

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 790
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Z)I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 791
    invoke-static {v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1400(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1500(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 792
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1600(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1700(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1800(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    return-void

    .line 797
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {v1, p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1900(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;I)V

    .line 800
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2000(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    .line 801
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2100(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    .line 802
    iget-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$2200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/qs/SecPageIndicator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$8;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p0, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$1300(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V

    return-void
.end method
