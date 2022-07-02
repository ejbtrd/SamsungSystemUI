.class Lcom/android/systemui/edgelighting/utils/TalkBackUtil$2;
.super Landroid/database/ContentObserver;
.source "TalkBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/utils/TalkBackUtil;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;Landroid/os/Handler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$2;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 67
    iget-object p0, p0, Lcom/android/systemui/edgelighting/utils/TalkBackUtil$2;->this$0:Lcom/android/systemui/edgelighting/utils/TalkBackUtil;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/TalkBackUtil;->access$000(Lcom/android/systemui/edgelighting/utils/TalkBackUtil;)V

    return-void
.end method
