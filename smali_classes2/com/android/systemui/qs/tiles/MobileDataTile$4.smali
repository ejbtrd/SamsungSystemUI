.class Lcom/android/systemui/qs/tiles/MobileDataTile$4;
.super Landroid/database/ContentObserver;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/os/Handler;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
