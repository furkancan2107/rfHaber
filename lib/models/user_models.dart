///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ModelArticlesSource {
/*
{
  "id": null,
  "name": "Gazeteoku.com"
} 
*/

  String? id;
  String? name;

  ModelArticlesSource({
    this.id,
    this.name,
  });
  ModelArticlesSource.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    name = json['name']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class ModelArticles {
/*
{
  "source": {
    "id": null,
    "name": "Gazeteoku.com"
  },
  "author": "Gazeteoku",
  "title": "Acil destek ödemesi o devlet bankasından geldi! TC kimlik kartıyla gidene anında 50.000 TL nakit veriyor - Gazete Oku",
  "description": "Acil nakit destek arayan ve toplu paraya ihtiyacı olanlara müjde Ziraat Bankası'ndan geldi. Ziraat Bankası 50.000 TL acil destek kredisi veriyor. Üstelik faiz oranları çok düşük.",
  "url": "https://www.gazeteoku.com/ekonomi/acil-destek-odemesi-o-devlet-bankasindan-geldi-tc-kimlik-kartiyla-gidene-aninda-50000-tl-nakit-veriyor/1050962",
  "urlToImage": "https://i.gazeteoku.com/storage/files/images/2023/02/09/acil-nakit-destek-lHsZ_cover.jpg",
  "publishedAt": "2023-02-09T17:31:00Z",
  "content": "Acil destek ödemesi o devlet bankasından geldi! TC kimlik kartıyla gidene anında 50.000 TL nakit veriyor. Türkiye'nin içinde bulunduğu ekonomik krize Bir de deprem felaketi eklendi. Vatandaşın alım g… [+2761 chars]"
} 
*/

  ModelArticlesSource? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  ModelArticles({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
  ModelArticles.fromJson(Map<String, dynamic> json) {
    source = (json['source'] != null)
        ? ModelArticlesSource.fromJson(json['source'])
        : null;
    author = json['author']?.toString();
    title = json['title']?.toString();
    description = json['description']?.toString();
    url = json['url']?.toString();
    urlToImage = json['urlToImage']?.toString();
    publishedAt = json['publishedAt']?.toString();
    content = json['content']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (source != null) {
      data['source'] = source!.toJson();
    }
    data['author'] = author;
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['urlToImage'] = urlToImage;
    data['publishedAt'] = publishedAt;
    data['content'] = content;
    return data;
  }
}

class Model {
/*
{
  "status": "ok",
  "totalResults": 70,
  "articles": [
    {
      "source": {
        "id": null,
        "name": "Gazeteoku.com"
      },
      "author": "Gazeteoku",
      "title": "Acil destek ödemesi o devlet bankasından geldi! TC kimlik kartıyla gidene anında 50.000 TL nakit veriyor - Gazete Oku",
      "description": "Acil nakit destek arayan ve toplu paraya ihtiyacı olanlara müjde Ziraat Bankası'ndan geldi. Ziraat Bankası 50.000 TL acil destek kredisi veriyor. Üstelik faiz oranları çok düşük.",
      "url": "https://www.gazeteoku.com/ekonomi/acil-destek-odemesi-o-devlet-bankasindan-geldi-tc-kimlik-kartiyla-gidene-aninda-50000-tl-nakit-veriyor/1050962",
      "urlToImage": "https://i.gazeteoku.com/storage/files/images/2023/02/09/acil-nakit-destek-lHsZ_cover.jpg",
      "publishedAt": "2023-02-09T17:31:00Z",
      "content": "Acil destek ödemesi o devlet bankasından geldi! TC kimlik kartıyla gidene anında 50.000 TL nakit veriyor. Türkiye'nin içinde bulunduğu ekonomik krize Bir de deprem felaketi eklendi. Vatandaşın alım g… [+2761 chars]"
    }
  ]
} 
*/

  String? status;
  int? totalResults;
  List<ModelArticles?>? articles;

  Model({
    this.status,
    this.totalResults,
    this.articles,
  });
  Model.fromJson(Map<String, dynamic> json) {
    status = json['status']?.toString();
    totalResults = json['totalResults']?.toInt();
    if (json['articles'] != null) {
      final v = json['articles'];
      final arr0 = <ModelArticles>[];
      v.forEach((v) {
        arr0.add(ModelArticles.fromJson(v));
      });
      articles = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['totalResults'] = totalResults;
    if (articles != null) {
      final v = articles;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['articles'] = arr0;
    }
    return data;
  }
}
