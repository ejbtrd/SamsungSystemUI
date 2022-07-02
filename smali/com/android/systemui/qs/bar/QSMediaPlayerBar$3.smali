.class Lcom/android/systemui/qs/bar/QSMediaPlayerBar$3;
.super Ljava/lang/Object;
.source "QSMediaPlayerBar.java"

# interfaces
.implements Lcom/android/systemui/media/SecMediaControlPanel$Callback;


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

    .line 190
    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$3;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showMediaOutput(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V
    .locals 2

    .line 216
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_MEDIA_PLAYER_MEDIA_OUTPUT_POPUP:Z

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mdx.quickboard.ACTION_OPEN_MEDIA_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.mdx.quickboard"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_cp_package"

    .line 219
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "extra_from"

    .line 220
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_token"

    .line 221
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 222
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 223
    iget-object p2, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$3;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    iget-object p2, p2, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    sget v1, Lcom/android/systemui/R$id;->media_carousel_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string p2, "extra_media_card_rect"

    .line 224
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 225
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$3;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$3;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$200(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    return-void
.end method

.method public updateMediaPlayerGuts(Z)V
    .locals 0

    return-void
.end method
