.class public Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;
.super Ljava/lang/Object;
.source "VerificationCodeUtils.java"


# static fields
.field private static DEBUG:Z

.field private static KEY_EXCP_STRS:[Ljava/lang/String;

.field private static KEY_SPEC_STRS:[Ljava/lang/String;

.field private static KEY_STRONGLY_KOR_PATTERN:[Ljava/lang/String;

.field private static KEY_STRONGLY_PATTERN:[Ljava/lang/String;

.field private static KEY_WEAK_STRS:[Ljava/lang/String;

.field private static Verify_Code:Ljava/lang/String;

.field private static code_behind_endIndex:I

.field private static code_behind_startIndex:I

.field private static code_endIndex:I

.field private static code_front_endIndex:I

.field private static code_front_startIndex:I

.field private static code_startIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 16
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->DEBUG:Z

    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    const/4 v0, -0x1

    .line 18
    sput v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_startIndex:I

    .line 19
    sput v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_endIndex:I

    .line 20
    sput v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_startIndex:I

    .line 21
    sput v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_endIndex:I

    .line 22
    sput v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_startIndex:I

    .line 23
    sput v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_endIndex:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 34
    sput-object v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->KEY_STRONGLY_KOR_PATTERN:[Ljava/lang/String;

    const-string/jumbo v1, "\u6821\u9a8c\u7801"

    const-string/jumbo v2, "\u968f\u673a\u7801"

    const-string/jumbo v3, "\u9a8c\u8bc1\u7801"

    const-string/jumbo v4, "\u53e3\u4ee4"

    const-string/jumbo v5, "\u8ba4\u8bc1\u7801"

    const-string/jumbo v6, "\u52a8\u6001\u7801"

    const-string/jumbo v7, "\u52a8\u6001\u5bc6\u7801"

    const-string/jumbo v8, "\uc778\uc99d\ubc88\ud638"

    const-string/jumbo v9, "\uc778\uc99d\ucf54\ub4dc"

    const-string/jumbo v10, "\uc778\uc99d \ubc88\ud638"

    const-string/jumbo v11, "\uc778\uc99d \ucf54\ub4dc"

    .line 37
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->KEY_STRONGLY_PATTERN:[Ljava/lang/String;

    const-string/jumbo v0, "\u9a8c\u8bc1\u7801\uff01"

    .line 51
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->KEY_EXCP_STRS:[Ljava/lang/String;

    const-string/jumbo v0, "\u5c3e\u53f7"

    .line 55
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->KEY_SPEC_STRS:[Ljava/lang/String;

    const-string/jumbo v0, "\u9a8c"

    .line 58
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->KEY_WEAK_STRS:[Ljava/lang/String;

    return-void
.end method

.method private static getBehindCode(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIndex",
            "content"
        }
    .end annotation

    .line 236
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    sget-boolean v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->DEBUG:Z

    const-string v1, "ORC/VerificationCodeUtils"

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBehindCode, startIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  tmp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v0, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xff01

    if-ne v3, v4, :cond_1

    return-object v2

    :cond_1
    const-string v3, "[0-9]{4,}"

    .line 244
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 245
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 248
    :cond_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 249
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v0, :cond_2

    .line 250
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-gt v4, v5, :cond_2

    .line 251
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    add-int/2addr v0, p0

    sput v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_startIndex:I

    .line 252
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    add-int/2addr v0, p0

    sput v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_endIndex:I

    .line 253
    sget-boolean p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "matcher.start index  = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code_behind_startIndex = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_startIndex:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code_behind_endIndex = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_endIndex:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    if-le p0, v0, :cond_4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "getBehindCode return null code"

    .line 259
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 262
    :cond_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v2
.end method

.method public static getCodeEndIndex()I
    .locals 1

    .line 312
    sget v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_endIndex:I

    return v0
.end method

.method public static getCodeStrartIndex()I
    .locals 1

    .line 305
    sget v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_startIndex:I

    return v0
.end method

.method private static getFrontCode(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "endIndex",
            "content"
        }
    .end annotation

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "[0-9]{4,}"

    .line 271
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 272
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 276
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-gt v2, v3, :cond_0

    .line 277
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    sput v1, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_startIndex:I

    .line 278
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    sput v1, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_endIndex:I

    .line 279
    sget-boolean v1, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->DEBUG:Z

    const-string v2, "ORC/VerificationCodeUtils"

    if-eqz v1, :cond_1

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code_front_startIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_startIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code_front_endIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_endIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-le v1, v3, :cond_2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "getFrontCode return null code"

    .line 284
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 287
    :cond_2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    return-object v1
.end method

.method public static getVerifyCode()Ljava/lang/String;
    .locals 2

    .line 295
    sget-boolean v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORC/VerificationCodeUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    return-object v0
.end method

.method public static isVerificationCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "msg"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "isVerificationCode() is false"

    const/4 v1, 0x0

    const-string v2, "ORC/VerificationCodeUtils"

    if-eqz p0, :cond_0

    .line 66
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p0, 0x0

    .line 69
    sput-object p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    const/4 v3, -0x1

    .line 72
    sput v3, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_startIndex:I

    .line 73
    sput v3, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_endIndex:I

    .line 74
    sput v3, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_startIndex:I

    .line 75
    sput v3, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_endIndex:I

    .line 99
    sget-object v4, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->KEY_STRONGLY_PATTERN:[Ljava/lang/String;

    array-length v5, v4

    move-object v7, p0

    move v6, v1

    move v8, v3

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v9, v4, v6

    .line 100
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v3, :cond_1

    .line 102
    invoke-static {v9, p1}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getBehindCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v8, v9

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 111
    :cond_2
    sget-object v4, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->KEY_STRONGLY_PATTERN:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_1
    const/4 v9, 0x4

    if-ge v6, v5, :cond_4

    aget-object v10, v4, v6

    .line 112
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-le v10, v9, :cond_3

    .line 114
    invoke-static {v10, p1}, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->getFrontCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move v8, v10

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 120
    :cond_4
    sget-object v4, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->KEY_SPEC_STRS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    move v10, v6

    :goto_2
    const/4 v11, 0x1

    if-ge v6, v5, :cond_6

    aget-object v12, v4, v6

    .line 121
    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-le v12, v8, :cond_5

    .line 122
    sget v13, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_startIndex:I

    if-le v13, v12, :cond_5

    move v10, v11

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    const-string p1, "KEY_STRONGLY_STR FrontCode= "

    const-string v4, "isVerificationCode() is true"

    if-eqz v7, :cond_f

    .line 128
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "KEY_STRONGLY_STR BehindCode= "

    if-ne v9, v0, :cond_7

    if-ne v10, v11, :cond_8

    .line 129
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ne v3, v0, :cond_a

    .line 130
    :cond_8
    sget-boolean p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->DEBUG:Z

    if-eqz p0, :cond_9

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_9
    sput-object v7, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 135
    sget p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_startIndex:I

    sput p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_startIndex:I

    .line 136
    sget p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_endIndex:I

    sput p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_endIndex:I

    .line 141
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_a
    if-eqz p0, :cond_d

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v9, v0, :cond_b

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_d

    .line 148
    :cond_b
    sget-boolean v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_c
    sput-object p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 153
    sget p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_startIndex:I

    sput p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_startIndex:I

    .line 154
    sget p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_endIndex:I

    sput p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_endIndex:I

    .line 159
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 163
    :cond_d
    sget-boolean p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->DEBUG:Z

    if-eqz p0, :cond_e

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_e
    sput-object v7, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 168
    sget p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_startIndex:I

    sput p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_startIndex:I

    .line 169
    sget p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_behind_endIndex:I

    sput p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_endIndex:I

    .line 174
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_f
    if-eqz p0, :cond_11

    .line 182
    sget-boolean v0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_10
    sput-object p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->Verify_Code:Ljava/lang/String;

    .line 187
    sget p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_startIndex:I

    sput p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_startIndex:I

    .line 188
    sget p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_front_endIndex:I

    sput p0, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_endIndex:I

    .line 193
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 225
    :cond_11
    sput v3, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_startIndex:I

    .line 226
    sput v3, Lcom/samsung/android/edgelighting/utils/VerificationCodeUtils;->code_endIndex:I

    .line 231
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
