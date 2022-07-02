.class Lcom/android/systemui/qs/PagedTileLayout$1;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "PagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/PagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$1;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateQuickPanelEdit()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout$1;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    invoke-static {p0}, Lcom/android/systemui/qs/PagedTileLayout;->access$000(Lcom/android/systemui/qs/PagedTileLayout;)V

    return-void
.end method
