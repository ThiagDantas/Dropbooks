package modelDAO;

import model.Produto;
import java.sql.*;
import java.util.ArrayList;

public class ProdutoDAO {
    
    public static Produto getProduto(int id) {
        
        Produto produto = new Produto();
        
        try {
            Connection con = Conecta.getConexao();
            String sql = "SELECT * FROM produto WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                produto.setDataPublicacao(rs.getDate("dataPublicacao"));
                produto.setDataRegistro(rs.getDate("dataRegistro"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setId_usuario(rs.getInt("id_usuario"));
                produto.setId(rs.getInt("id"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setAtivo(rs.getInt("ativo"));
                produto.setAutor(rs.getString("autor"));
                produto.setEditora(rs.getString("editora"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setTitulo(rs.getString("titulo"));
                produto.setGenero(rs.getString("genero"));
                produto.setIdioma(rs.getString("idioma"));
            }else{
                produto = null;
            }
            
            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return produto;
    }
    
    public static String setProduto(Produto produto) {
        String resp = "";
        try {
            Connection con = Conecta.getConexao();
            String sql = "INSERT INTO produto(dataPublicacao, dataRegistro, preco, "
                       + "id_usuario, quantidade, ativo, autor, editora, descricao, titulo, genero, idioma) "
                       + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setDate(1, produto.getDataPublicacao());
            ps.setDate(2, produto.getDataRegistro());
            ps.setFloat(3, produto.getPreco());
            ps.setInt(4, produto.getId_usuario());
            ps.setInt(5, produto.getQuantidade());
            ps.setInt(6, produto.getAtivo());
            ps.setString(7, produto.getAutor());
            ps.setString(8, produto.getEditora());
            ps.setString(9, produto.getDescricao());
            ps.setString(10, produto.getTitulo());
            ps.setString(11, produto.getGenero());
            ps.setString(12, produto.getIdioma());
            
            ps.execute();
            
            ps.close();
            con.close();
            
            resp="ok";
        }catch (Exception e){
            resp = e.toString();
        }
        return resp;
    }
    
    public static ArrayList<Produto> getProdutosPorTermo(String termo) {
        
        ArrayList <Produto> produtos = new ArrayList();
        
        try {
            Connection con = Conecta.getConexao();
            String sql = "SELECT * FROM produto WHERE titulo LIKE ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, termo + "%");
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Produto produto = new Produto();
                produto.setDataPublicacao(rs.getDate("dataPublicacao"));
                produto.setDataRegistro(rs.getDate("dataRegistro"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setId_usuario(rs.getInt("id_usuario"));
                produto.setId(rs.getInt("id"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setAtivo(rs.getInt("ativo"));
                produto.setAutor(rs.getString("autor"));
                produto.setEditora(rs.getString("editora"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setTitulo(rs.getString("titulo"));
                produto.setGenero(rs.getString("genero"));
                produto.setIdioma(rs.getString("idioma"));
                produtos.add(produto);
            }
            
            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return produtos;
    }
    
    public static ArrayList<Produto> getProdutos(String id_usuario) {
        
        ArrayList <Produto> produtos = new ArrayList();
        
        try {
            Connection con = Conecta.getConexao();
            String sql = "SELECT * FROM produto WHERE id_usuario=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id_usuario);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                Produto produto = new Produto();
                produto.setDataPublicacao(rs.getDate("dataPublicacao"));
                produto.setDataRegistro(rs.getDate("dataRegistro"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setId_usuario(rs.getInt("id_usuario"));
                produto.setId(rs.getInt("id"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setAtivo(rs.getInt("ativo"));
                produto.setAutor(rs.getString("autor"));
                produto.setEditora(rs.getString("editora"));
                produto.setDescricao(rs.getString("descricao"));
                produto.setTitulo(rs.getString("titulo"));
                produto.setGenero(rs.getString("genero"));
                produto.setIdioma(rs.getString("idioma"));
                produtos.add(produto);
            }
            
            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return produtos;
    }
    
    public static String ativadoDesativado(Produto produto) {

     String resp = "";

     try {
         Connection con = Conecta.getConexao();
         String sql = "UPDATE produto SET ativo=? WHERE id=?";
         PreparedStatement ps = con.prepareStatement(sql);
         ps.setInt(1, produto.getAtivo());

         ps.setString(2, Integer.toString(produto.getId()));

         ps.execute();

         ps.close();
         con.close();

         resp = "OK";

        } catch (Exception e) {
            resp = e.toString();
        }

        return resp;
    } 
    
    public static String alterarProduto(Produto produto) {

     String resp = "";

     try {
         Connection con = Conecta.getConexao();
         String sql = "UPDATE produto SET quantidade=?, titulo=?, autor=?, editora=?, dataPublicacao=?, descricao=?, preco=? WHERE id=?";
         PreparedStatement ps = con.prepareStatement(sql);
         ps.setInt(1, produto.getQuantidade());
         ps.setString(2, produto.getTitulo());
         ps.setString(3, produto.getAutor());
         ps.setString(4, produto.getEditora());
         ps.setString(5, produto.getDataPublicacao().toString());
         ps.setString(6, produto.getDescricao());
         ps.setFloat(7, produto.getPreco());
         //ps.setString(7, produto.getIdioma());
         //ps.setString(8, produto.getGenero());

         ps.setString(8, Integer.toString(produto.getId()));

         ps.execute();

         ps.close();
         con.close();

         resp = "OK";

        } catch (Exception e) {
            resp = e.toString();
        }

        return resp;
    } 
    
    public static String excluirProduto(String idProduto) {
    String resp = "";
    try {
        Connection con = Conecta.getConexao();
        String sql = "DELETE FROM produto WHERE id = ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, idProduto);

        ps.execute();

        ps.close();
        con.close();

        resp="ok";
        }catch (Exception e){
            resp = e.toString();
        }
        return resp;
    }
        
}
