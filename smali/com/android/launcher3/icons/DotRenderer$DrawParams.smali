.class public Lcom/android/launcher3/icons/DotRenderer$DrawParams;
.super Ljava/lang/Object;
.source "DotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/DotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawParams"
.end annotation


# instance fields
.field public iconBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "notification dot"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    return-void
.end method
