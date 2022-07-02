.class Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MimeTypeBlockList;
.super Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;
.source "ExecutableAppHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MimeTypeBlockList"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 822
    sget v0, Lcom/android/wm/shell/R$array;->drag_and_split_mime_type_block_list:I

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$BlockList;-><init>(Landroid/content/Context;I)V

    return-void
.end method
