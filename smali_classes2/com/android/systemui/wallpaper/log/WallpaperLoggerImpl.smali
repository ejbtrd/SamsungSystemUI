.class public final Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;
.super Ljava/lang/Object;
.source "WallpaperLoggerImpl.kt"

# interfaces
.implements Lcom/android/systemui/wallpaper/log/WallpaperLogger;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWallpaperLoggerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WallpaperLoggerImpl.kt\ncom/android/systemui/wallpaper/log/WallpaperLoggerImpl\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,34:1\n114#2,6:35\n114#2,6:41\n*E\n*S KotlinDebug\n*F\n+ 1 WallpaperLoggerImpl.kt\ncom/android/systemui/wallpaper/log/WallpaperLoggerImpl\n*L\n27#1,6:35\n31#1,6:41\n*E\n"
.end annotation


# instance fields
.field private buffer:Lcom/android/systemui/log/LogBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/systemui/log/LogBufferFactory;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/log/LogBufferFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WallpaperLoggerImpl"

    .line 20
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    .line 22
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/log/LogBufferFactory;->create$default(Lcom/android/systemui/log/LogBufferFactory;Ljava/lang/String;IIILjava/lang/Object;)Lcom/android/systemui/log/LogBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object p0, p0, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    new-instance v1, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl$log$2;

    invoke-direct {v1, p2}, Lcom/android/systemui/wallpaper/log/WallpaperLoggerImpl$log$2;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/log/LogBuffer;->getFrozen()Z

    move-result p2

    if-nez p2, :cond_0

    .line 115
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/systemui/log/LogBuffer;->push(Lcom/android/systemui/log/LogMessage;)V

    :cond_0
    return-void
.end method
